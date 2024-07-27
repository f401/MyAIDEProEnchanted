.class Labcd/dl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/el;->j6(Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V
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
.field final FH:Lcom/aide/ui/trainer/g$j;

.field final Hw:Z

.field final Zo:Labcd/el;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/dl;

    const-wide v2, 0x14a06f5906f9e200L

    const-wide v4, 0x30ad05cd450b9e00L    # 3.2082510488136564E-74

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/el;Lcom/aide/ui/trainer/g$j;ZLjava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Labcd/dl;->Zo:Labcd/el;

    iput-object p2, p0, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    iput-boolean p3, p0, Labcd/dl;->Hw:Z

    iput-object p4, p0, Labcd/dl;->v5:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2647386506cbf2ccL
    .end annotation

    const-wide v4, 0x5896f1674bb506b1L    # 5.7855970264880135E118

    :try_start_0
    sget-boolean v0, Labcd/dl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5896f1674bb506b1L    # 5.7855970264880135E118

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/dl;->Zo:Labcd/el;

    iget-object v1, p0, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-static {v0, v1}, Labcd/el;->j6(Labcd/el;Lcom/aide/ui/trainer/g$j;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-boolean v2, p0, Labcd/dl;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {v1}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Labcd/dl;->Zo:Labcd/el;

    iget-object v3, p0, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-virtual {v2, v3}, Labcd/el;->j6(Lcom/aide/ui/trainer/g$j;)Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    :try_start_3
    new-instance v2, Labcd/cl;

    invoke-direct {v2, p0, v1, v0}, Labcd/cl;-><init>(Labcd/dl;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method
