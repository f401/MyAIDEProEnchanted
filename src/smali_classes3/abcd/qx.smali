.class public abstract Labcd/qx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/qx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/qx;->j6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final j6(Landroid/content/Context;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/qx;->DW:Ljava/lang/Object;

    if-nez v0, :cond_47

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/f;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_11
    iget-object v0, p0, Labcd/qx;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Labcd/qx;->j6(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Labcd/qx;->DW:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_23} :catch_36
    .catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_23} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_47

    :catch_24
    move-exception p1

    new-instance v0, Labcd/qx$a;

    const-string v1, "Could not access creator."

    invoke-direct {v0, v1, p1}, Labcd/qx$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2d
    move-exception p1

    new-instance v0, Labcd/qx$a;

    const-string v1, "Could not instantiate creator."

    invoke-direct {v0, v1, p1}, Labcd/qx$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_36
    move-exception p1

    new-instance v0, Labcd/qx$a;

    const-string v1, "Could not load creator class."

    invoke-direct {v0, v1, p1}, Labcd/qx$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3f
    new-instance p1, Labcd/qx$a;

    const-string v0, "Could not get remote context."

    invoke-direct {p1, v0}, Labcd/qx$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    :goto_47
    iget-object p1, p0, Labcd/qx;->DW:Ljava/lang/Object;

    return-object p1
.end method

.method protected abstract j6(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
