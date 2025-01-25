.class Lcom/aide/ui/build/android/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/r;->j6(Ljava/util/Map;)V
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

.field final Hw:Lcom/aide/ui/build/android/r;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, -0x3a10836f58005743L  # -7.795700180716709E28

    const-class v4, Lcom/aide/ui/build/android/q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/r;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/q;->Hw:Lcom/aide/ui/build/android/r;

    iput-object p2, p0, Lcom/aide/ui/build/android/q;->FH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x225832e52550f610L
    .end annotation

    const-wide v0, 0x4bdda90a436927f7L  # 2.9090750203092197E57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/q;->Hw:Lcom/aide/ui/build/android/r;

    iget-object v2, v2, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    const-string v3, "aidl"

    iget-object v4, p0, Lcom/aide/ui/build/android/q;->FH:Ljava/util/Map;

    invoke-static {v2, v3, v4}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/q;->Hw:Lcom/aide/ui/build/android/r;

    iget-object v2, v2, Lcom/aide/ui/build/android/r;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->tp(Lcom/aide/ui/build/android/B;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/q;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method
