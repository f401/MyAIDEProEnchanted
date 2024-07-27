.class public final Lcom/google/android/gms/internal/ads/rr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/rr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/rr;",
        "Lcom/google/android/gms/internal/ads/rr$a;",
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
            "Lcom/google/android/gms/internal/ads/rr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfer:Lcom/google/android/gms/internal/ads/rr;


# instance fields
.field private zzfem:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/rr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/rr;->zzfer:Lcom/google/android/gms/internal/ads/rr;

    const-class v0, Lcom/google/android/gms/internal/ads/rr;

    sget-object v1, Lcom/google/android/gms/internal/ads/rr;->zzfer:Lcom/google/android/gms/internal/ads/rr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    return-void
.end method

.method public static J0()Lcom/google/android/gms/internal/ads/rr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/rr;->zzfer:Lcom/google/android/gms/internal/ads/rr;

    return-object v0
.end method

.method static synthetic Ws()Lcom/google/android/gms/internal/ads/rr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/rr;->zzfer:Lcom/google/android/gms/internal/ads/rr;

    return-object v0
.end method


# virtual methods
.method public final EQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/rr;->zzfem:I

    return v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/sr;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/rr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/rr;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/rr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/rr;->zzfer:Lcom/google/android/gms/internal/ads/rr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/rr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/rr;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/rr;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/rr;->zzfer:Lcom/google/android/gms/internal/ads/rr;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/rr;->zzfer:Lcom/google/android/gms/internal/ads/rr;

    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzfem"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/rr$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/rr$a;-><init>(Lcom/google/android/gms/internal/ads/sr;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/rr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rr;-><init>()V

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
