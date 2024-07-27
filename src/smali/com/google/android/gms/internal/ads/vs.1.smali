.class public final Lcom/google/android/gms/internal/ads/vs;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/vs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/vs;",
        "Lcom/google/android/gms/internal/ads/vs$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu",
            "<",
            "Lcom/google/android/gms/internal/ads/vs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfik:Lcom/google/android/gms/internal/ads/vs;


# instance fields
.field private zzccg:I

.field private zzfii:Ljava/lang/String;

.field private zzfij:Lcom/google/android/gms/internal/ads/ou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ou",
            "<",
            "Lcom/google/android/gms/internal/ads/fs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/vs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vs;->zzfik:Lcom/google/android/gms/internal/ads/vs;

    const-class v0, Lcom/google/android/gms/internal/ads/vs;

    sget-object v1, Lcom/google/android/gms/internal/ads/vs;->zzfik:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vs;->zzfii:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/hu;->tp()Lcom/google/android/gms/internal/ads/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vs;->zzfij:Lcom/google/android/gms/internal/ads/ou;

    return-void
.end method

.method public static J0()Lcom/google/android/gms/internal/ads/vs$a;
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/vs;->zzfik:Lcom/google/android/gms/internal/ads/vs;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/vs;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vs$a;

    return-object v0
.end method

.method static synthetic Ws()Lcom/google/android/gms/internal/ads/vs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vs;->zzfik:Lcom/google/android/gms/internal/ads/vs;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/fs;)V
    .registers 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vs;->zzfij:Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ou;->j3()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vs;->zzfij:Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ou;->j6(I)Lcom/google/android/gms/internal/ads/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vs;->zzfij:Lcom/google/android/gms/internal/ads/ou;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vs;->zzfij:Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/vs;Lcom/google/android/gms/internal/ads/fs;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vs;->j6(Lcom/google/android/gms/internal/ads/fs;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/vs;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vs;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vs;->zzfii:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final EQ()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/fs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vs;->zzfij:Lcom/google/android/gms/internal/ads/ou;

    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/ws;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/vs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/vs;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/vs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/vs;->zzfik:Lcom/google/android/gms/internal/ads/vs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/vs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/vs;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/vs;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/vs;->zzfik:Lcom/google/android/gms/internal/ads/vs;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/vs;->zzfik:Lcom/google/android/gms/internal/ads/vs;

    const-string v1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzccg"

    aput-object v4, v2, v3

    const-string v3, "zzfii"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "zzfij"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/google/android/gms/internal/ads/fs;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/vs$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/vs$a;-><init>(Lcom/google/android/gms/internal/ads/ws;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/vs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vs;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
