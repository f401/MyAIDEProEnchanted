.class Lcom/aide/ui/build/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/m;->j6(Ljava/util/Map;)V
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

.field final Hw:Lcom/aide/ui/build/android/m;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/l;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, -0x3a101a33d984a2d0L    # -7.897474711825233E28

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/m;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/l;->Hw:Lcom/aide/ui/build/android/m;

    iput-object p2, p0, Lcom/aide/ui/build/android/l;->FH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4efd4a3691f5ab0L
    .end annotation

    const-wide v4, 0x3264f9bbe7bf9148L    # 6.224203249597093E-66

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3264f9bbe7bf9148L    # 6.224203249597093E-66

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/l;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    const-string v1, "aapt"

    iget-object v2, p0, Lcom/aide/ui/build/android/l;->FH:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/aide/ui/build/android/l;->Hw:Lcom/aide/ui/build/android/m;

    iget-object v0, v0, Lcom/aide/ui/build/android/m;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->tp(Lcom/aide/ui/build/android/B;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/l;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
