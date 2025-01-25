.class final Lcom/google/firebase/iid/P;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/b;


# instance fields
.field private final DW:Lcom/google/firebase/iid/zzan;

.field private final FH:Lcom/google/firebase/iid/u;

.field private final Hw:Ljava/util/concurrent/Executor;

.field private final j6:Lcom/google/firebase/FirebaseApp;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;)V
    .registers 6

    new-instance v0, Lcom/google/firebase/iid/u;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->j6()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/iid/u;-><init>(Landroid/content/Context;Lcom/google/firebase/iid/zzan;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/iid/P;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Lcom/google/firebase/iid/u;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Lcom/google/firebase/iid/u;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/P;->j6:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/iid/P;->DW:Lcom/google/firebase/iid/zzan;

    iput-object p4, p0, Lcom/google/firebase/iid/P;->FH:Lcom/google/firebase/iid/u;

    iput-object p3, p0, Lcom/google/firebase/iid/P;->Hw:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final DW(Labcd/Yx;)Labcd/Yx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYx<",
            "Landroid/os/Bundle;",
            ">;)",
            "LYx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/P;->Hw:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/iid/T;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/T;-><init>(Lcom/google/firebase/iid/P;)V

    invoke-virtual {p1, v0, v1}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Sx;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method private final j6(Labcd/Yx;)Labcd/Yx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LYx<",
            "TT;>;)",
            "LYx<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/iid/H;->j6()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/S;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/S;-><init>(Lcom/google/firebase/iid/P;)V

    invoke-virtual {p1, v0, v1}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Sx;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method private final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Labcd/Yx;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "LYx<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "scope"

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "sender"

    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "subtype"

    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appid"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/P;->j6:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->FH()Lcom/google/firebase/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/b;->j6()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gmp_app_id"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/P;->DW:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzan;->Hw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gmsv"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "osv"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/P;->DW:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/P;->DW:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzan;->FH()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver_name"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fiid-12451000"

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Labcd/Zx;

    invoke-direct {p1}, Labcd/Zx;-><init>()V

    iget-object p2, p0, Lcom/google/firebase/iid/P;->Hw:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/firebase/iid/Q;

    invoke-direct {p3, p0, p4, p1}, Lcom/google/firebase/iid/Q;-><init>(Lcom/google/firebase/iid/P;Landroid/os/Bundle;Labcd/Zx;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Labcd/Zx;->j6()Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method private static j6(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    const-string v0, "SERVICE_NOT_AVAILABLE"

    if-eqz p0, :cond_63

    const-string v1, "registration_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    const-string v1, "unregistered"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    return-object v1

    :cond_16
    const-string v1, "error"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    if-eqz v1, :cond_2c

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "FirebaseInstanceId"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "INSTANCE_ID_RESET"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic j6(Lcom/google/firebase/iid/P;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/iid/P;->j6(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LYx<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/topics/"

    if-eqz v2, :cond_16

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_16
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1b
    const-string v2, "gcm.topic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_34

    :cond_2f
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/iid/P;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/P;->DW(Labcd/Yx;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/P;->j6(Labcd/Yx;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method public final DW()Z
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/P;->DW:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzan;->j6()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LYx<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-static {p1}, Labcd/ay;->j6(Ljava/lang/Object;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LYx<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/topics/"

    if-eqz v2, :cond_16

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_16
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1b
    const-string v2, "gcm.topic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3b

    :cond_36
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3b
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/iid/P;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/P;->DW(Labcd/Yx;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/P;->j6(Labcd/Yx;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LYx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/google/firebase/iid/P;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/P;->DW(Labcd/Yx;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method final synthetic j6(Landroid/os/Bundle;Labcd/Zx;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/P;->FH:Lcom/google/firebase/iid/u;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/u;->j6(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Labcd/Zx;->j6(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    invoke-virtual {p2, p1}, Labcd/Zx;->j6(Ljava/lang/Exception;)V

    return-void
.end method

.method public final j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
