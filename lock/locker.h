//
// Created by 37419 on 2020/5/2.
//

#ifndef TINYWEBSERVER_LOCKER_H
#define TINYWEBSERVER_LOCKER_H

#include <exception>
#include <pthread.h>
#include <semaphore.h>

// 信号量
// 信号量只能取自然数值，只有两种操作：等待（P）和信号（V）
// 假设有信号量SV
// P操作： 如果SV>0，则SV--；若SV=0，则挂起执行（阻塞）
// V操作： 如果有其他线程/进程/协程因为等待SV而挂起，则唤醒其，没有的话则将SV++
class sem {
private:
    sem_t m_sem;    // sem_t是信号量类型，其具体类型是void *
public:
    // 构造函数
    sem() {
        // 初始化一个未命名的信号量
        if (sem_init(&m_sem, 0, 0) != 0) throw std::exception();
    }
    // 析构函数
    ~sem() {
        // 销毁信号量
        sem_destroy(&m_sem);
    }
    // 原子等待信号量。返回值为成功（获取信号量成功）或失败（获取信号量失败，挂起）
    bool wait() {
        // sem_wait成功返回0，失败返回errno
        return sem_wait(&m_sem) == 0;
    }
    // 原子释放信号量。
    bool post() {
        // sem_post成功返回0，失败返回errno
        return sem_post(&m_sem) == 0;
    }
};

// 互斥锁
// 只有两个操作： 加锁和解锁
class locker {
private:
    pthread_mutex_t m_mutex;
public:
    // 构造函数
    locker() {
        // 初始化互斥量，成功返回0
        if (pthread_mutex_init(&m_mutex, NULL) != 0) throw std::exception();
    }
    // 析构函数
    ~locker() {
        // 销毁互斥量
        pthread_mutex_destroy(&m_mutex);
    }
    // 原子加锁
    bool lock() {
        return pthread_mutex_lock(&m_mutex) == 0;
    }
    // 原子解锁
    bool unlock() {
        return pthread_mutex_unlock(&m_mutex) == 0;
    }
};

// 条件变量
// 条件变量提供了一种线程间的通知机制
// 某个共享数据达到某个值时（满足条件），唤醒等待这个共享数据的线程
class cond {
private:
    pthread_mutex_t m_mutex;
    pthread_cond_t m_cond;
public:
    // 构造函数
    cond() {
        if (pthread_mutex_init(&m_mutex, NULL) != 0) throw std::exception();
        if (pthread_cond_init(&m_cond, NULL) != 0) {
            pthread_mutex_destroy(&m_mutex);
            throw std::exception();
        }
    }
    // 析构函数
    ~cond() {
        pthread_mutex_destroy(&m_mutex);
        pthread_cond_destroy(&m_cond);
    }
    // 等待条件变量
    bool wait() {
        int ret = 0;
        pthread_mutex_lock(&m_mutex);   // 对共享变量上锁
        ret = pthread_cond_wait(&m_cond, &m_mutex); // 尝试等待条件变量，等到了（也就是成功）返回0
        pthread_mutex_unlock(&m_mutex);   // 对共享变量解锁
        return ret == 0;
    }
    // 信号
    bool signal() {
        return pthread_cond_signal(&m_cond) == 0;
    }
};

#endif //TINYWEBSERVER_LOCKER_H
