.class public final Lcom/google/android/gms/internal/ads/mG;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/mG$a;,
        Lcom/google/android/gms/internal/ads/mG$b;,
        Lcom/google/android/gms/internal/ads/mG$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/mG;",
        "Lcom/google/android/gms/internal/ads/mG$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/mG;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzceg:Lcom/google/android/gms/internal/ads/mG;


# instance fields
.field private zzccg:I

.field private zzcch:I

.field private zzcef:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/mG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG;->zzceg:Lcom/google/android/gms/internal/ads/mG;

    const-class v1, Lcom/google/android/gms/internal/ads/mG;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/Zu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/mG;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/mG;->zzceg:Lcom/google/android/gms/internal/ads/mG;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->VH:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/mG;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Zu;

    return-object v0
.end method

.method static synthetic J0()Lcom/google/android/gms/internal/ads/mG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/mG;->zzceg:Lcom/google/android/gms/internal/ads/mG;

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

    packed-switch p1, :pswitch_data_6c

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
    sget-object p1, Lcom/google/android/gms/internal/ads/mG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/mG;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/mG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/mG;->zzceg:Lcom/google/android/gms/internal/ads/mG;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/mG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/mG;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/mG;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/mG;->zzceg:Lcom/google/android/gms/internal/ads/mG;

    return-object p1

    :pswitch_37  #0x3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mG$c;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/mG$b;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/mG;->zzceg:Lcom/google/android/gms/internal/ads/mG;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzccg"

    aput-object v4, v2, v3

    const-string v3, "zzcch"

    aput-object v3, v2, p3

    const/4 p3, 0x2

    aput-object p1, v2, p3

    const/4 p1, 0x3

    const-string p3, "zzcef"

    aput-object p3, v2, p1

    const/4 p1, 0x4

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5f  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/mG$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/mG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    return-object p1

    :pswitch_65  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/mG;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/mG;-><init>()V

    return-object p1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_5f  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
