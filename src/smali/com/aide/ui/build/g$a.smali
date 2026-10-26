.class Lcom/aide/ui/build/g$a;
.super Ljava/lang/Object;
.source "g$a.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/aide/engine/SyntaxError;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Z
    .annotation runtime Labcd/ru;
        field = -0x237b643bc5d0bde4L
    .end annotation
.end field

.field private final Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x14380274140c6a4fL
    .end annotation
.end field

.field final Zo:Lcom/aide/ui/build/g;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public final v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x566c7f3bc1c13331L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v2, 0x3f9688f4ddf48631L    # 0.022006822630947723

    .line 54
    const-class v0, Lcom/aide/ui/build/g$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/g;ZZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/build/g;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g$a;->j6:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x4e957e592328760L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/g$a;->Zo:Lcom/aide/ui/build/g;

    .line 64
    iput-boolean p2, p0, Lcom/aide/ui/build/g$a;->FH:Z

    .line 65
    iput-boolean p3, p0, Lcom/aide/ui/build/g$a;->Hw:Z

    .line 66
    iput-object p4, p0, Lcom/aide/ui/build/g$a;->v5:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 68
    sget-boolean v0, Lcom/aide/ui/build/g$a;->DW:Z

    if-eqz v0, :cond_1

    .line 69
    const-wide v2, 0x4e957e592328760L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private buildFromCmake(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->build(Ljava/lang/String;)Labcd/Pl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/aide/ui/build/g$a;->Zo:Lcom/aide/ui/build/g;

    invoke-interface {v0}, Labcd/Pl;->j6()[B

    move-result-object v2

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/aide/ui/build/g$a;->j6([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6([BI)Ljava/lang/String;
    .locals 7
    .annotation runtime Labcd/su;
        method = 0x531c7463ef61e0efL
    .end annotation

    const-wide v2, 0x2b68ad4898fd0e79L    # 1.4102686492472138E-99

    .line 78
    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g$a;->j6:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x2b68ad4898fd0e79L    # 1.4102686492472138E-99

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ndk-build exited with code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    .line 88
    sget-boolean v0, Lcom/aide/ui/build/g$a;->DW:Z

    if-eqz v0, :cond_2

    .line 89
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private j6(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v6

    .line 113
    iget-object v0, p0, Lcom/aide/ui/build/g$a;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-virtual {v6, v1}, Labcd/Zk;->j3(Ljava/lang/String;)Z

    move-result v0

    .line 116
    const-string v2, "g$a"

    invoke-static {v2, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v6}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v2

    const-string v5, "Hw"

    invoke-virtual {v2, v5}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "g$a"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v5, v8}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    const-string v2, "j3"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v9

    invoke-static {v2, v5}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "\u5f00\u59cb\u7f16\u8bd1"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0, v1}, Lcom/aide/ui/build/g$a;->buildFromCmake(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 134
    :cond_1
    :goto_0
    return-object v4

    .line 126
    :cond_2
    const-string v0, "\u4e0d\u662fcmake\u9879\u76ee"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    .line 128
    :goto_1
    invoke-static {p1, v0}, Lcom/aide/ui/build/android/Q;->j6(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/aide/ui/build/android/Q;->Hw()Ljava/util/Map;

    move-result-object v2

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/aide/ui/build/g$a;->j6(Ljava/util/List;Ljava/lang/String;)V

    move-object v5, v4

    .line 132
    check-cast v5, Ljava/io/OutputStream;

    move-object v5, v4

    check-cast v5, [B

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/aide/ui/build/g$a;->Zo:Lcom/aide/ui/build/g;

    invoke-interface {v0}, Labcd/Pl;->j6()[B

    move-result-object v3

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/aide/ui/build/g$a;->j6([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Labcd/su;
        method = -0x78dd6af0ed7f390L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide v2, 0x164f7a56c2c2ee0L

    .line 147
    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g$a;->j6:Z

    if-eqz v0, :cond_0

    .line 148
    const-wide v0, 0x164f7a56c2c2ee0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-static {p1, p2}, Lcom/a;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running ndk-build ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 154
    const/16 v0, 0x22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/16 v0, 0x22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    .line 158
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 163
    sget-boolean v0, Lcom/aide/ui/build/g$a;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 164
    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    :cond_3
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Labcd/su;
        method = -0x2420b4eb9b5e7864L
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/aide/ui/build/g$a;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 8
    .annotation runtime Labcd/su;
        method = -0x2420b4eb9b5e7864L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    const-wide v6, -0x13b115bcd07c4878L    # -5.20376200183989E213

    .line 175
    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g$a;->j6:Z

    if-eqz v0, :cond_0

    .line 176
    const-wide v0, -0x13b115bcd07c4878L    # -5.20376200183989E213

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/build/g$a;->FH:Z

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "clean"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/build/g$a;->j6(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 184
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/aide/ui/build/g$a;->Hw:Z

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/build/g$a;->j6(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "NDK build elapsed "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 193
    sget-boolean v1, Lcom/aide/ui/build/g$a;->DW:Z

    if-eqz v1, :cond_3

    .line 194
    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 196
    :cond_3
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
