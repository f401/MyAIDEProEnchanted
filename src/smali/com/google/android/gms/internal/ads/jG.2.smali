.class public final Lcom/google/android/gms/internal/ads/jG;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/jG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/jG;",
        "Lcom/google/android/gms/internal/ads/jG$a;",
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
            "Lcom/google/android/gms/internal/ads/jG;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcdz:Lcom/google/android/gms/internal/ads/jG;


# instance fields
.field private zzccg:I

.field private zzcdv:Ljava/lang/String;

.field private zzcdw:I

.field private zzcdx:Lcom/google/android/gms/internal/ads/nu;

.field private zzcdy:Lcom/google/android/gms/internal/ads/sG;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/jG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    const-class v0, Lcom/google/android/gms/internal/ads/jG;

    sget-object v1, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jG;->zzcdv:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/hu;->u7()Lcom/google/android/gms/internal/ads/nu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jG;->zzcdx:Lcom/google/android/gms/internal/ads/nu;

    return-void
.end method

.method static synthetic EQ()Lcom/google/android/gms/internal/ads/jG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/jG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/jG;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/jG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/jG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/jG;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/jG;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    const-string v2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0008\u0000\u0002\u000c\u0001\u0003\u0016\u0004\t\u0002"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zzccg"

    aput-object v5, v3, v4

    const-string v4, "zzcdv"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "zzcdw"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v0, 0x4

    const-string v4, "zzcdx"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "zzcdy"

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/jG$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/jG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/jG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jG;-><init>()V

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
