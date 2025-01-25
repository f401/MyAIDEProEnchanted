.class public final Lcom/google/android/gms/internal/ads/hs$b;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/hs$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/hs$b;",
        "Lcom/google/android/gms/internal/ads/hs$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/hs$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfho:Lcom/google/android/gms/internal/ads/hs$b;


# instance fields
.field private zzfhb:I

.field private zzfhl:Lcom/google/android/gms/internal/ads/Yr;

.field private zzfhm:I

.field private zzfhn:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hs$b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    const-class v1, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    return-void
.end method

.method static synthetic aM()Lcom/google/android/gms/internal/ads/hs$b;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    return-object v0
.end method


# virtual methods
.method public final EQ()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hs$b;->zzfhl:Lcom/google/android/gms/internal/ads/Yr;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/Yr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hs$b;->zzfhl:Lcom/google/android/gms/internal/ads/Yr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->XL()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final QX()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hs$b;->zzfhn:I

    return v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/as;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hs$b;->zzfhm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/as;->j6(I)Lcom/google/android/gms/internal/ads/as;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/as;->v5:Lcom/google/android/gms/internal/ads/as;

    :cond_a
    return-object v0
.end method

.method public final XL()Lcom/google/android/gms/internal/ads/ts;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hs$b;->zzfhb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ts;->j6(I)Lcom/google/android/gms/internal/ads/ts;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->Zo:Lcom/google/android/gms/internal/ads/ts;

    :cond_a
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/is;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_62

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
    sget-object p1, Lcom/google/android/gms/internal/ads/hs$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/hs$b;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/hs$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/hs$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/hs$b;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/hs$b;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfhl"

    aput-object v2, v0, v1

    const-string v1, "zzfhm"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzfhn"

    aput-object v1, v0, p3

    const/4 p3, 0x3

    const-string v1, "zzfhb"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_56  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/hs$b$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hs$b$a;-><init>(Lcom/google/android/gms/internal/ads/is;)V

    return-object p1

    :pswitch_5c  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/hs$b;-><init>()V

    return-object p1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5c  #00000001
        :pswitch_56  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
