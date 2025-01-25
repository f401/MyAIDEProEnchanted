.class Lcom/aide/uidesigner/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH(Ljava/lang/String;)V
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

.field final Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x26532fe3199dbf1fL  # -9.523483305966733E123

    const-wide v2, 0x145f4a910b9d62f0L

    const-class v4, Lcom/aide/uidesigner/q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/q;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    iput-object p2, p0, Lcom/aide/uidesigner/q;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x23842e55660fcc00L
    .end annotation

    const-wide v0, 0x5f59cfcd32c5887L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aide/uidesigner/q;->FH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Lcom/aide/uidesigner/q;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/uidesigner/q;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/aide/uidesigner/q;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/uidesigner/e;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->FH(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/uidesigner/q;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Hw(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/aide/uidesigner/q;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Ljava/lang/String;)V

    :cond_42
    iget-object v2, p0, Lcom/aide/uidesigner/q;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->v5(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V

    goto :goto_4d

    :cond_48
    iget-object v2, p0, Lcom/aide/uidesigner/q;->Hw:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->we(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    :goto_4d
    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/q;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_56
    throw v2
.end method
