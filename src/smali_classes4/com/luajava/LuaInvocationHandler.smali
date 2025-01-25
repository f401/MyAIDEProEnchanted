.class public Lcom/luajava/LuaInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private L:Lcom/luajava/LuaState;

.field private obj:Lcom/luajava/LuaObject;

.field private print:Lcom/luajava/LuaObject;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaObject;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaInvocationHandler;->obj:Lcom/luajava/LuaObject;

    iget-object v0, p1, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    iput-object v0, p0, Lcom/luajava/LuaInvocationHandler;->L:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/luajava/LuaInvocationHandler;->L:Lcom/luajava/LuaState;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaInvocationHandler;->print:Lcom/luajava/LuaObject;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaInvocationHandler;->obj:Lcom/luajava/LuaObject;

    iget-object v5, v1, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v5

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/luajava/LuaInvocationHandler;->obj:Lcom/luajava/LuaObject;

    invoke-virtual {v1, v6}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v1

    if-eqz v1, :cond_6d

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_40

    move-result v1

    if-nez v1, :cond_2d

    :try_start_21
    const-string v1, "java.lang.Boolean"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_26} :catch_35
    .catchall {:try_start_21 .. :try_end_26} :catchall_40

    move-result-object v1

    :try_start_27
    invoke-virtual {v7, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_2d
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    monitor-exit v5

    :goto_34
    return-object v1

    :catch_35
    move-exception v1

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v1

    monitor-exit v5

    throw v1

    :cond_43
    :try_start_43
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    move-result v1

    if-nez v1, :cond_55

    :try_start_49
    const-string v1, "java.lang.Number"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_49 .. :try_end_4e} :catch_5d
    .catchall {:try_start_49 .. :try_end_4e} :catchall_40

    move-result-object v1

    :try_start_4f
    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_68

    :cond_55
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    monitor-exit v5

    goto :goto_34

    :catch_5d
    move-exception v1

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_68
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    monitor-exit v5

    goto :goto_34

    :cond_6d
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_4f .. :try_end_70} :catchall_40

    :try_start_70
    const-string v3, "java.lang.Void"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_75
    .catch Ljava/lang/ClassNotFoundException; {:try_start_70 .. :try_end_75} :catch_aa
    .catch Lcom/luajava/LuaException; {:try_start_70 .. :try_end_75} :catch_b5
    .catchall {:try_start_70 .. :try_end_75} :catchall_40

    move-result-object v3

    :try_start_76
    invoke-virtual {v7, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    :cond_84
    invoke-virtual {v2, p3}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Ljava/lang/Object;

    move-object v1, v0
    :try_end_8c
    .catch Lcom/luajava/LuaException; {:try_start_76 .. :try_end_8c} :catch_b5
    .catchall {:try_start_76 .. :try_end_8c} :catchall_40

    :goto_8c
    if-nez v1, :cond_131

    :try_start_8e
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_40

    move-result v2

    if-nez v2, :cond_a2

    :try_start_96
    const-string v2, "java.lang.Boolean"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_96 .. :try_end_9b} :catch_100
    .catchall {:try_start_96 .. :try_end_9b} :catchall_40

    move-result-object v2

    :try_start_9c
    invoke-virtual {v7, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    :cond_a2
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    monitor-exit v5
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_40

    goto :goto_34

    :catch_aa
    move-exception v2

    :try_start_ab
    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b5
    .catch Lcom/luajava/LuaException; {:try_start_ab .. :try_end_b5} :catch_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_40

    :catch_b5
    move-exception v2

    move-object v4, v2

    move-object v3, v1

    :goto_b8
    :try_start_b8
    iget-object v1, p0, Lcom/luajava/LuaInvocationHandler;->print:Lcom/luajava/LuaObject;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v4}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-virtual {v1, v9}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_b8 .. :try_end_eb} :catchall_40

    move-object v1, v3

    goto :goto_8c

    :cond_ed
    :try_start_ed
    invoke-virtual {v2, p3}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f0
    .catch Lcom/luajava/LuaException; {:try_start_ed .. :try_end_f0} :catch_b5
    .catchall {:try_start_ed .. :try_end_f0} :catchall_40

    move-result-object v2

    if-eqz v2, :cond_138

    :try_start_f3
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_138

    move-object v0, v2

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-static {v1, v7}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    :try_end_fe
    .catch Lcom/luajava/LuaException; {:try_start_f3 .. :try_end_fe} :catch_134
    .catchall {:try_start_f3 .. :try_end_fe} :catchall_40

    move-result-object v1

    goto :goto_8c

    :catch_100
    move-exception v1

    :try_start_101
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10b
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_10e
    .catchall {:try_start_101 .. :try_end_10e} :catchall_40

    move-result v2

    if-nez v2, :cond_11d

    :try_start_111
    const-string v2, "java.lang.Number"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_116
    .catch Ljava/lang/ClassNotFoundException; {:try_start_111 .. :try_end_116} :catch_126
    .catchall {:try_start_111 .. :try_end_116} :catchall_40

    move-result-object v2

    :try_start_117
    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_131

    :cond_11d
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    monitor-exit v5

    goto/16 :goto_34

    :catch_126
    move-exception v1

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_131
    monitor-exit v5
    :try_end_132
    .catchall {:try_start_117 .. :try_end_132} :catchall_40

    goto/16 :goto_34

    :catch_134
    move-exception v1

    move-object v4, v1

    move-object v3, v2

    goto :goto_b8

    :cond_138
    move-object v1, v2

    goto/16 :goto_8c
.end method
