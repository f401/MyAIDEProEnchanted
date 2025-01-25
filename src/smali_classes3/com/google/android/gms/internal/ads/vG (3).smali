.class public final Lcom/google/android/gms/internal/ads/vG;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/vG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/vG;",
        "Lcom/google/android/gms/internal/ads/vG$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/vG;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcgg:Lcom/google/android/gms/internal/ads/vG;


# instance fields
.field private zzccg:I

.field private zzcea:I

.field private zzcft:Lcom/google/android/gms/internal/ads/uG;

.field private zzcgd:I

.field private zzcge:I

.field private zzcgf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/vG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vG;->zzcgg:Lcom/google/android/gms/internal/ads/vG;

    const-class v1, Lcom/google/android/gms/internal/ads/vG;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/vG;->zzcea:I

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/Zu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/vG;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/vG;->zzcgg:Lcom/google/android/gms/internal/ads/vG;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->VH:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/vG;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Zu;

    return-object v0
.end method

.method static synthetic J0()Lcom/google/android/gms/internal/ads/vG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vG;->zzcgg:Lcom/google/android/gms/internal/ads/vG;

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

    packed-switch p1, :pswitch_data_74

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
    sget-object p1, Lcom/google/android/gms/internal/ads/vG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/vG;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/vG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/vG;->zzcgg:Lcom/google/android/gms/internal/ads/vG;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/vG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/vG;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/vG;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/vG;->zzcgg:Lcom/google/android/gms/internal/ads/vG;

    return-object p1

    :pswitch_37  #0x3
    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/vG;->zzcgg:Lcom/google/android/gms/internal/ads/vG;

    const-string v0, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "zzccg"

    aput-object v3, v1, v2

    const-string v2, "zzcea"

    aput-object v2, v1, p3

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const/4 p1, 0x3

    const-string p3, "zzcft"

    aput-object p3, v1, p1

    const/4 p1, 0x4

    const-string p3, "zzcgd"

    aput-object p3, v1, p1

    const/4 p1, 0x5

    const-string p3, "zzcge"

    aput-object p3, v1, p1

    const/4 p1, 0x6

    const-string p3, "zzcgf"

    aput-object p3, v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_67  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/vG$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    return-object p1

    :pswitch_6d  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/vG;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vG;-><init>()V

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6d  #00000001
        :pswitch_67  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
