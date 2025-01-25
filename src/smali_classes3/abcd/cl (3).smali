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
    .registers 5

    const-wide v0, 0x14a06f5906f9e200L

    const-wide v2, 0xd2dc10b9e33d5b7L

    const-class v4, Labcd/cl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x58a3e9bd837f9674L  # 1.0043059720288953E119

    :try_start_5
    sget-boolean v2, Labcd/cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/cl;->FH:Ljava/lang/String;

    iget-object v3, p0, Labcd/cl;->v5:Labcd/dl;

    iget-object v3, v3, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$j;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/cl;->v5:Labcd/dl;

    iget-object v2, v2, Labcd/dl;->FH:Lcom/aide/ui/trainer/g$j;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$j;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_38
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->rN(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/mk;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/cl;->v5:Labcd/dl;

    iget-boolean v2, v2, Labcd/dl;->Hw:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->FH(Z)V

    goto :goto_5c

    :cond_55
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ro()V

    :goto_5c
    iget-object v2, p0, Labcd/cl;->v5:Labcd/dl;

    iget-boolean v2, v2, Labcd/dl;->Hw:Z

    if-eqz v2, :cond_69

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->v5()V

    :cond_69
    iget-object v2, p0, Labcd/cl;->Hw:Ljava/util/List;

    if-eqz v2, :cond_b4

    const/4 v2, 0x0

    :goto_6e
    iget-object v4, p0, Labcd/cl;->Hw:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_bc

    if-ge v2, v4, :cond_b4

    const/4 v4, 0x1

    :try_start_77
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v5

    iget-object v6, p0, Labcd/cl;->Hw:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v2, :cond_87

    const/4 v7, 0x1

    goto :goto_88

    :cond_87
    const/4 v7, 0x0

    :goto_88
    invoke-virtual {v5, v6, v7}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8b} :catch_8c
    .catchall {:try_start_77 .. :try_end_8b} :catchall_bc

    goto :goto_b1

    :catch_8c
    move-exception v5

    :try_start_8d
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Labcd/cl;->Hw:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " could not be loaded!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_b4
    iget-object v2, p0, Labcd/cl;->v5:Labcd/dl;

    iget-object v2, v2, Labcd/dl;->v5:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_bb
    .catchall {:try_start_8d .. :try_end_bb} :catchall_bc

    return-void

    :catchall_bc
    move-exception v2

    sget-boolean v3, Labcd/cl;->DW:Z

    if-eqz v3, :cond_c4

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_c4
    goto :goto_c6

    :goto_c5
    throw v2

    :goto_c6
    goto :goto_c5
.end method
