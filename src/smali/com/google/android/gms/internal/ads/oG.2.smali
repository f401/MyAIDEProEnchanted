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
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
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
            "Lcom/google/android/gms/internal/ads/Zu",
            "<",
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

    const-class v0, Lcom/google/android/gms/internal/ads/oG;

    sget-object v1, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/16 v0, 0x3e8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/ads/oG;->zzcet:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/oG;->zzceu:I

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/Zu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Zu",
            "<",
            "Lcom/google/android/gms/internal/ads/oG;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->VH:I

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
    .registers 12

    const/4 v0, 0x0

    const/4 v7, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/AG;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/oG;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/oG;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/oG;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/FG;->Hw()Lcom/google/android/gms/internal/ads/mu;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/oG;->zzcfe:Lcom/google/android/gms/internal/ads/oG;

    const-string v3, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0004\u0005\u0007\u0004\u0006\u0008\u0004\u0007\t\u0004\u0008\n\u0004\t\u000b\t\n"

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "zzccg"

    aput-object v6, v4, v5

    const-string v5, "zzcet"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v0, 0x3

    const-string v5, "zzceu"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "zzcev"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "zzcew"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string v1, "zzcex"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string v1, "zzcey"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    const-string v1, "zzcez"

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string v1, "zzcfa"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    const-string v1, "zzcfb"

    aput-object v1, v4, v0

    const/16 v0, 0xc

    const-string v1, "zzcfc"

    aput-object v1, v4, v0

    const/16 v0, 0xd

    const-string v1, "zzcfd"

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/oG$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/oG$a;-><init>(Lcom/google/android/gms/internal/ads/AG;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/oG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/oG;-><init>()V

    goto/16 :goto_0

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
