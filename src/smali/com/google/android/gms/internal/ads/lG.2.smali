.class public final Lcom/google/android/gms/internal/ads/lG;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/lG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/lG;",
        "Lcom/google/android/gms/internal/ads/lG$a;",
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
            "Lcom/google/android/gms/internal/ads/lG;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcee:Lcom/google/android/gms/internal/ads/lG;


# instance fields
.field private zzccg:I

.field private zzcdy:Lcom/google/android/gms/internal/ads/sG;

.field private zzcea:I

.field private zzcec:Lcom/google/android/gms/internal/ads/jG;

.field private zzced:Lcom/google/android/gms/internal/ads/ou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ou",
            "<",
            "Lcom/google/android/gms/internal/ads/rG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/lG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/lG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/lG;->zzcee:Lcom/google/android/gms/internal/ads/lG;

    const-class v0, Lcom/google/android/gms/internal/ads/lG;

    sget-object v1, Lcom/google/android/gms/internal/ads/lG;->zzcee:Lcom/google/android/gms/internal/ads/lG;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/hu;->tp()Lcom/google/android/gms/internal/ads/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lG;->zzced:Lcom/google/android/gms/internal/ads/ou;

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/Zu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Zu",
            "<",
            "Lcom/google/android/gms/internal/ads/lG;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/lG;->zzcee:Lcom/google/android/gms/internal/ads/lG;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->VH:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/lG;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Zu;

    return-object v0
.end method

.method static synthetic J0()Lcom/google/android/gms/internal/ads/lG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/lG;->zzcee:Lcom/google/android/gms/internal/ads/lG;

    return-object v0
.end method


# virtual methods
.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    const/4 v6, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/AG;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/lG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/lG;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/lG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/lG;->zzcee:Lcom/google/android/gms/internal/ads/lG;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/lG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/lG;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/lG;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/lG;->zzcee:Lcom/google/android/gms/internal/ads/lG;

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/lG;->zzcee:Lcom/google/android/gms/internal/ads/lG;

    const-string v2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0000\u0002\u001b\u0003\u000c\u0001\u0004\t\u0002"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zzccg"

    aput-object v5, v3, v4

    const-string v4, "zzcec"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "zzced"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lcom/google/android/gms/internal/ads/rG;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "zzcea"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    const/4 v0, 0x6

    const-string v4, "zzcdy"

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/lG$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/lG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/lG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/lG;-><init>()V

    goto :goto_0

    nop

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
