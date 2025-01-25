.class Lcom/aide/ui/build/android/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/w;->j6(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Ljava/util/Map;

.field final Hw:Lcom/aide/ui/build/android/w;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, -0x3a10eca81c4122f8L  # -7.693935953665958E28

    const-class v4, Lcom/aide/ui/build/android/v;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/w;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/v;->Hw:Lcom/aide/ui/build/android/w;

    iput-object p2, p0, Lcom/aide/ui/build/android/v;->FH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x14cb33bd5d59b79dL
    .end annotation

    const-wide v0, 0x5046c9183467a78fL  # 5.276767223602156E78

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/v;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/v;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v2, v2, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    const-string v3, "NDK"

    iget-object v4, p0, Lcom/aide/ui/build/android/v;->FH:Ljava/util/Map;

    invoke-static {v2, v3, v4}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/v;->Hw:Lcom/aide/ui/build/android/w;

    iget-object v2, v2, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->tp(Lcom/aide/ui/build/android/B;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/v;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method
