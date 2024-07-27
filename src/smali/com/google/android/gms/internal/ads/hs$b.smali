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
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
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
            "Lcom/google/android/gms/internal/ads/Zu",
            "<",
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

    const-class v0, Lcom/google/android/gms/internal/ads/hs$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

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

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/Yr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hs$b;->zzfhl:Lcom/google/android/gms/internal/ads/Yr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->XL()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v0

    :cond_0
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

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/as;->v5:Lcom/google/android/gms/internal/ads/as;

    :cond_0
    return-object v0
.end method

.method public final XL()Lcom/google/android/gms/internal/ads/ts;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hs$b;->zzfhb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ts;->j6(I)Lcom/google/android/gms/internal/ads/ts;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->Zo:Lcom/google/android/gms/internal/ads/ts;

    :cond_0
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/is;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/hs$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/hs$b;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/hs$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hs$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/hs$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/hs$b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/hs$b;->zzfho:Lcom/google/android/gms/internal/ads/hs$b;

    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzfhl"

    aput-object v4, v2, v3

    const-string v3, "zzfhm"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "zzfhn"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "zzfhb"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/hs$b$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/hs$b$a;-><init>(Lcom/google/android/gms/internal/ads/is;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hs$b;-><init>()V

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
