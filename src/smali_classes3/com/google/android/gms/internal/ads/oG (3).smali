.class public final Lcom/google/android/gms/internal/ads/oG;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/oG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/oG;",
        "Lcom/google/android/gms/internal/ads/oG$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/oG;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcfe:Lcom/google/android/gms/internal/ads/oG;


# instance fields
.field private zzccg:I

.field private zzcet:I

.field private zzceu:I

.field private zzcev:I

.field private zzcew:I

.field private zzcex:I

.field private zzcey:I

.field private zzcez:I

.field private zzcfa:I

.field private zzcfb:I

.field private zzcfc:I

.field private zzcfd:Lcom/google/android/gms/internal/ads/pG;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/oG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/oG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    const-class v1, Lcom/google/android/gms/internal/ads/oG;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/oG;->zzcet:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/oG;->zzceu:I

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/Zu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/oG;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->VH:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/oG;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Zu;

    return-object v0
.end method

.method static synthetic J0()Lcom/google/android/gms/internal/ads/oG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    return-object v0
.end method


# virtual methods
.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object p2, Lcom/google/android/gms/internal/ads/AG;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_a0

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
    sget-object p1, Lcom/google/android/gms/internal/ads/oG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/oG;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/oG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/oG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/oG;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/oG;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    return-object p1

    :pswitch_37  #0x3
    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    const-string v1, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0004\u0005\u0007\u0004\u0006\b\u0004\u0007\t\u0004\b\n\u0004\t\u000b\t\n"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzccg"

    aput-object v4, v2, v3

    const-string v3, "zzcet"

    aput-object v3, v2, p3

    const/4 p3, 0x2

    aput-object p1, v2, p3

    const/4 p1, 0x3

    const-string p3, "zzceu"

    aput-object p3, v2, p1

    const/4 p1, 0x4

    aput-object p2, v2, p1

    const/4 p1, 0x5

    const-string p2, "zzcev"

    aput-object p2, v2, p1

    const/4 p1, 0x6

    const-string p2, "zzcew"

    aput-object p2, v2, p1

    const/4 p1, 0x7

    const-string p2, "zzcex"

    aput-object p2, v2, p1

    const/16 p1, 0x8

    const-string p2, "zzcey"

    aput-object p2, v2, p1

    const/16 p1, 0x9

    const-string p2, "zzcez"

    aput-object p2, v2, p1

    const/16 p1, 0xa

    const-string p2, "zzcfa"

    aput-object p2, v2, p1

    const/16 p1, 0xb

    const-string p2, "zzcfb"

    aput-object p2, v2, p1

    const/16 p1, 0xc

    const-string p2, "zzcfc"

    aput-object p2, v2, p1

    const/16 p1, 0xd

    const-string p2, "zzcfd"

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_93  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/oG$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    return-object p1

    :pswitch_99  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/oG;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/oG;-><init>()V

    return-object p1

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_99  #00000001
        :pswitch_93  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
