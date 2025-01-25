.class Lcom/aide/uidesigner/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

.field final Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1735b0d83d9444b8L  # 7.254348340218493E-197

    const-wide v2, -0x1ccb2fb3daf0a827L  # -7.854997784641012E169

    const-class v4, Lcom/aide/uidesigner/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/r;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;

    iput-object p2, p0, Lcom/aide/uidesigner/r;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1fa348d225e15f4L
    .end annotation

    const-wide v0, 0x4017aed2c134a09L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/r;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;

    iget-object v2, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    iget-object v3, p0, Lcom/aide/uidesigner/r;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    iget-object v3, v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/r;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method
