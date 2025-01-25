.class Lcom/aide/uidesigner/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
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

    const-wide v2, -0x39252fe8320d58cL

    const-class v4, Lcom/aide/uidesigner/g;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/g;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/g;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x552dffb17992d7fdL
    .end annotation

    const-wide v0, 0x613ab95bbfad978L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/g;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Z)V

    iget-object v2, p0, Lcom/aide/uidesigner/g;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/uidesigner/g;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/aide/uidesigner/g;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V

    :cond_30
    iget-object v2, p0, Lcom/aide/uidesigner/g;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/g;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v2
.end method
