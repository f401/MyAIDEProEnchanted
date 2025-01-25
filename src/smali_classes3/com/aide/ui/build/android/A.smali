.class Lcom/aide/ui/build/android/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/B;->J0()V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/build/android/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, 0x14c2f6ebf65c4a00L  # 1.153706343994808E-208

    const-class v4, Lcom/aide/ui/build/android/A;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/B;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/A;->Hw:Lcom/aide/ui/build/android/B;

    iput-object p2, p0, Lcom/aide/ui/build/android/A;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x24e6c78794b6b468L
    .end annotation

    const-wide v0, 0x6bd5da09e8b438ffL  # 2.873574593506435E211

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/A;->Hw:Lcom/aide/ui/build/android/B;

    invoke-static {v3}, Lcom/aide/ui/build/android/B;->XL(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/build/android/A;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/MainActivity;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/A;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method
