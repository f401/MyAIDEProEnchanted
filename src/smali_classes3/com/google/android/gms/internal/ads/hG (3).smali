.class public final Lcom/google/android/gms/internal/ads/hG;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/hG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/hG;",
        "Lcom/google/android/gms/internal/ads/hG$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/hG;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcdh:Lcom/google/android/gms/internal/ads/hG;


# instance fields
.field private zzccg:I

.field private zzcdb:I

.field private zzcdc:Lcom/google/android/gms/internal/ads/sG;

.field private zzcdd:Lcom/google/android/gms/internal/ads/sG;

.field private zzcde:Lcom/google/android/gms/internal/ads/sG;

.field private zzcdf:Lcom/google/android/gms/internal/ads/ou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ou<",
            "Lcom/google/android/gms/internal/ads/sG;",
            ">;"
        }
    .end annotation
.end field

.field private zzcdg:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/hG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hG;->zzcdh:Lcom/google/android/gms/internal/ads/hG;

    const-class v1, Lcom/google/android/gms/internal/ads/hG;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/hu;->tp()Lcom/google/android/gms/internal/ads/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hG;->zzcdf:Lcom/google/android/gms/internal/ads/ou;

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/Zu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/hG;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/hG;->zzcdh:Lcom/google/android/gms/internal/ads/hG;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->VH:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hG;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Zu;

    return-object v0
.end method

.method static synthetic J0()Lcom/google/android/gms/internal/ads/hG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/hG;->zzcdh:Lcom/google/android/gms/internal/ads/hG;

    return-object v0
.end method


# virtual methods
.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/AG;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_78

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
    sget-object p1, Lcom/google/android/gms/internal/ads/hG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/hG;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/hG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/hG;->zzcdh:Lcom/google/android/gms/internal/ads/hG;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/hG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/hG;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/hG;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/hG;->zzcdh:Lcom/google/android/gms/internal/ads/hG;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/hG;->zzcdh:Lcom/google/android/gms/internal/ads/hG;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u001b\u0006\u0004\u0004"

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzccg"

    aput-object v2, v0, v1

    const-string v1, "zzcdb"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzcdc"

    aput-object v1, v0, p3

    const/4 p3, 0x3

    const-string v1, "zzcdd"

    aput-object v1, v0, p3

    const/4 p3, 0x4

    const-string v1, "zzcde"

    aput-object v1, v0, p3

    const/4 p3, 0x5

    const-string v1, "zzcdf"

    aput-object v1, v0, p3

    const/4 p3, 0x6

    const-class v1, Lcom/google/android/gms/internal/ads/sG;

    aput-object v1, v0, p3

    const/4 p3, 0x7

    const-string v1, "zzcdg"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6b  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/hG$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    return-object p1

    :pswitch_71  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/hG;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/hG;-><init>()V

    return-object p1

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_71  #00000001
        :pswitch_6b  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
