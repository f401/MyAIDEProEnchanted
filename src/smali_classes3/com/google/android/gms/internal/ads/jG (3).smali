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
        "Lcom/google/android/gms/internal/ads/hu<",
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
            "Lcom/google/android/gms/internal/ads/Zu<",
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

    const-class v1, Lcom/google/android/gms/internal/ads/jG;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

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
    .registers 8

    sget-object p2, Lcom/google/android/gms/internal/ads/AG;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_6e

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10  #0x7
    return-object p2

    :pswitch_11  #0x6
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_16  #0x5
    sget-object p1, Lcom/google/android/gms/internal/ads/jG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/jG;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/jG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/jG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/jG;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/jG;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    return-object p1

    :pswitch_37  #0x3
    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/jG;->zzcdz:Lcom/google/android/gms/internal/ads/jG;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\b\u0000\u0002\f\u0001\u0003\u0016\u0004\t\u0002"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "zzccg"

    aput-object v3, v1, v2

    const-string v2, "zzcdv"

    aput-object v2, v1, p3

    const/4 p3, 0x2

    const-string v2, "zzcdw"

    aput-object v2, v1, p3

    const/4 p3, 0x3

    aput-object p1, v1, p3

    const/4 p1, 0x4

    const-string p3, "zzcdx"

    aput-object p3, v1, p1

    const/4 p1, 0x5

    const-string p3, "zzcdy"

    aput-object p3, v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_62  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/jG$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/jG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    return-object p1

    :pswitch_68  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/jG;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jG;-><init>()V

    return-object p1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_68  #00000001
        :pswitch_62  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
