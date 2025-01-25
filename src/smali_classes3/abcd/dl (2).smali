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
    .registers 5

    const-wide v0, 0x14a06f5906f9e200L

    const-wide v2, 0x30ad05cd450b9e00L  # 3.2082510488136564E-74

    const-class v4, Labcd/dl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2647386506cbf2ccL
    .end annotation

    const-wide v0, 0x5896f1674bb506b1L  # 5.7855970264880135E118

    :try_start_5
    sget-boolean v2, Labcd/dl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/dl;->Zo:Labcd/el;

    iget-object v3, p0, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-static {v2, v3}, Labcd/el;->j6(Labcd/el;Lcom/aide/ui/trainer/g$j;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Labcd/dl;->Hw:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_31

    if-eqz v3, :cond_27

    :try_start_18
    invoke-static {v2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_31

    goto :goto_1d

    :catch_1c
    move-exception v3

    :goto_1d
    :try_start_1d
    iget-object v3, p0, Labcd/dl;->Zo:Labcd/el;

    iget-object v4, p0, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-virtual {v3, v4}, Labcd/el;->j6(Lcom/aide/ui/trainer/g$j;)Ljava/util/List;

    move-result-object v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_26
    .catchall {:try_start_1d .. :try_end_25} :catchall_31

    goto :goto_28

    :catch_26
    move-exception v3

    :cond_27
    const/4 v3, 0x0

    :goto_28
    :try_start_28
    new-instance v4, Labcd/cl;

    invoke-direct {v4, p0, v2, v3}, Labcd/cl;-><init>(Labcd/dl;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/dl;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method
