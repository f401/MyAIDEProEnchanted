.class Labcd/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/dl;->run()V
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

.field final Hw:Ljava/util/List;

.field final v5:Labcd/dl;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/cl;

    const-wide v2, 0x14a06f5906f9e200L

    const-wide v4, 0xd2dc10b9e33d5b7L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/dl;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Labcd/cl;->v5:Labcd/dl;

    iput-object p2, p0, Labcd/cl;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/cl;->Hw:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x18e2ec2e436486a0L
    .end annotation

    const-wide v6, 0x58a3e9bd837f9674L    # 1.0043059720288953E119

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x58a3e9bd837f9674L    # 1.0043059720288953E119

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/cl;->FH:Ljava/lang/String;

    iget-object v1, p0, Labcd/cl;->v5:Labcd/dl;

    iget-object v1, v1, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$j;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/cl;->v5:Labcd/dl;

    iget-object v0, v0, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$j;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Zk;->rN(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/mk;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/cl;->v5:Labcd/dl;

    iget-boolean v0, v0, Labcd/dl;->Hw:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->FH(Z)V

    :goto_0
    iget-object v0, p0, Labcd/cl;->v5:Labcd/dl;

    iget-boolean v0, v0, Labcd/dl;->Hw:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->v5()V

    :cond_2
    iget-object v0, p0, Labcd/cl;->Hw:Ljava/util/List;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_1
    iget-object v0, p0, Labcd/cl;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ge v1, v0, :cond_6

    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v5

    iget-object v0, p0, Labcd/cl;->Hw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v5, v0, v3}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ro()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cl;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    move v3, v2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/cl;->Hw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be loaded!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v3, v0, v5}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Labcd/cl;->v5:Labcd/dl;

    iget-object v0, v0, Labcd/dl;->v5:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-void
.end method
