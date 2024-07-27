.class public final Lcom/google/android/gms/internal/ads/Gr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/Gr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/Gr;",
        "Lcom/google/android/gms/internal/ads/Gr$a;",
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
            "Lcom/google/android/gms/internal/ads/Gr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzffi:Lcom/google/android/gms/internal/ads/Gr;


# instance fields
.field private zzfff:Lcom/google/android/gms/internal/ads/Mr;

.field private zzffg:Lcom/google/android/gms/internal/ads/Br;

.field private zzffh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Gr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Gr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzffi:Lcom/google/android/gms/internal/ads/Gr;

    const-class v0, Lcom/google/android/gms/internal/ads/Gr;

    sget-object v1, Lcom/google/android/gms/internal/ads/Gr;->zzffi:Lcom/google/android/gms/internal/ads/Gr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    return-void
.end method

.method public static QX()Lcom/google/android/gms/internal/ads/Gr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzffi:Lcom/google/android/gms/internal/ads/Gr;

    return-object v0
.end method

.method static synthetic XL()Lcom/google/android/gms/internal/ads/Gr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzffi:Lcom/google/android/gms/internal/ads/Gr;

    return-object v0
.end method


# virtual methods
.method public final EQ()Lcom/google/android/gms/internal/ads/Mr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gr;->zzfff:Lcom/google/android/gms/internal/ads/Mr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Mr;->QX()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/Br;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gr;->zzffg:Lcom/google/android/gms/internal/ads/Br;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Br;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/zr;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Gr;->zzffh:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zr;->j6(I)Lcom/google/android/gms/internal/ads/zr;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zr;->v5:Lcom/google/android/gms/internal/ads/zr;

    :cond_0
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/Hr;->j6:[I

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
    sget-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/Gr;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/Gr;->zzffi:Lcom/google/android/gms/internal/ads/Gr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/Gr;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/Gr;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzffi:Lcom/google/android/gms/internal/ads/Gr;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/Gr;->zzffi:Lcom/google/android/gms/internal/ads/Gr;

    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzfff"

    aput-object v4, v2, v3

    const-string v3, "zzffg"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "zzffh"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/Gr$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Gr$a;-><init>(Lcom/google/android/gms/internal/ads/Hr;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/Gr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Gr;-><init>()V

    goto :goto_0

    nop

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
