Vim�UnDo� ��j�2,�#�߱L�:����~����Bd��_r   �   O        ret = pthread_mutexattr_setprotocol(&mutex_attr,PTHREAD_PRIO_INHERIT) ;   �                           _W�w    _�                      �        ����                                                                                                                                                                                                                                                                                                                            �           �                   _W�w    �   �   �   �      Y//pslavkin        ret = pthread_mutexattr_setprotocol(&mutex_attr,PTHREAD_PRIO_INHERIT) ;�   �   �   �      !//pslavkin        if ( ret != 0 )   //pslavkin        {   b//pslavkin            OS_DEBUG("Error: pthread_mutexattr_setprotocol failed: %s\n",strerror(ret));   -//pslavkin            return_code = OS_ERROR;   //pslavkin            break;   //pslavkin        }5��