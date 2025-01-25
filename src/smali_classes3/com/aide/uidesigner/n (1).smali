.class Lcom/aide/uidesigner/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x26532fe3199dbf1fL  # -9.523483305966733E123

    const-wide v2, 0x145f08af6bca2e40L

    const-class v4, Lcom/aide/uidesigner/n;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/n;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x16381f6fe0389e61L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/n;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x56ab6bd2e34fcd7L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    iget-object v1, v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/aide/uidesigner/n;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    iget-object v0, v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;

    invoke-static {v1, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Lcom/aide/uidesigner/s;)V

    goto :goto_44

    :cond_2b
    iget-object v1, v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/aide/uidesigner/n;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    iget-object v0, v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Ljava/lang/String;)V

    goto :goto_44

    :cond_3b
    iget-boolean v0, v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->Hw:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/aide/uidesigner/n;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->VH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    :cond_44
    :goto_44
    return-void

    :catchall_45
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/n;->DW:Z

    if-eqz v1, :cond_60

    const-wide v2, -0x56ab6bd2e34fcd7L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    throw v0
.end method
