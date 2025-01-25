.class public final Lcom/google/android/gms/internal/ads/fr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/fr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/fr;",
        "Lcom/google/android/gms/internal/ads/fr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/fr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfeg:Lcom/google/android/gms/internal/ads/fr;


# instance fields
.field private zzfee:Lcom/google/android/gms/internal/ads/jr;

.field private zzfef:Lcom/google/android/gms/internal/ads/Ur;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/fr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fr;->zzfeg:Lcom/google/android/gms/internal/ads/fr;

    const-class v1, Lcom/google/android/gms/internal/ads/fr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    return-void
.end method

.method static synthetic Ws()Lcom/google/android/gms/internal/ads/fr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/fr;->zzfeg:Lcom/google/android/gms/internal/ads/fr;

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/fr;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/fr;->zzfeg:Lcom/google/android/gms/internal/ads/fr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/fr;

    return-object p0
.end method


# virtual methods
.method public final EQ()Lcom/google/android/gms/internal/ads/jr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fr;->zzfee:Lcom/google/android/gms/internal/ads/jr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/jr;->Ws()Lcom/google/android/gms/internal/ads/jr;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/Ur;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fr;->zzfef:Lcom/google/android/gms/internal/ads/Ur;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ur;->Ws()Lcom/google/android/gms/internal/ads/Ur;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/gr;->j6:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/fr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/fr;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/fr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/fr;->zzfeg:Lcom/google/android/gms/internal/ads/fr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/fr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/fr;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/fr;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/fr;->zzfeg:Lcom/google/android/gms/internal/ads/fr;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/fr;->zzfeg:Lcom/google/android/gms/internal/ads/fr;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfee"

    aput-object v2, v0, v1

    const-string v1, "zzfef"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4c  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/fr$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/fr$a;-><init>(Lcom/google/android/gms/internal/ads/gr;)V

    return-object p1

    :pswitch_52  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/fr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/fr;-><init>()V

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
