.class public final Lcom/google/android/gms/internal/ads/pr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/pr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/pr;",
        "Lcom/google/android/gms/internal/ads/pr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/pr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfeq:Lcom/google/android/gms/internal/ads/pr;


# instance fields
.field private zzfek:I

.field private zzfeo:Lcom/google/android/gms/internal/ads/rr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/pr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/pr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/pr;->zzfeq:Lcom/google/android/gms/internal/ads/pr;

    const-class v1, Lcom/google/android/gms/internal/ads/pr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    return-void
.end method

.method static synthetic Ws()Lcom/google/android/gms/internal/ads/pr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/pr;->zzfeq:Lcom/google/android/gms/internal/ads/pr;

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/pr;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/pr;->zzfeq:Lcom/google/android/gms/internal/ads/pr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/pr;

    return-object p0
.end method


# virtual methods
.method public final EQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pr;->zzfek:I

    return v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/rr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pr;->zzfeo:Lcom/google/android/gms/internal/ads/rr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/rr;->J0()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/qr;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_58

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
    sget-object p1, Lcom/google/android/gms/internal/ads/pr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/pr;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/pr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/pr;->zzfeq:Lcom/google/android/gms/internal/ads/pr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/pr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/pr;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/pr;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/pr;->zzfeq:Lcom/google/android/gms/internal/ads/pr;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/pr;->zzfeq:Lcom/google/android/gms/internal/ads/pr;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfeo"

    aput-object v2, v0, v1

    const-string v1, "zzfek"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4c  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/pr$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/pr$a;-><init>(Lcom/google/android/gms/internal/ads/qr;)V

    return-object p1

    :pswitch_52  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/pr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/pr;-><init>()V

    return-object p1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_4c  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
