.class Lcom/aide/uidesigner/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


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

    const-wide v2, 0x145e63fb60772ec5L

    const-class v4, Lcom/aide/uidesigner/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/i;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x6b57633c4a214ed7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/i;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x4936ca55f00fc31L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/uidesigner/i;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/aide/uidesigner/i;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2b

    iget-object v0, p0, Lcom/aide/uidesigner/i;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v0, p1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;I)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2d

    :cond_2b
    const/4 p1, 0x1

    return p1

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/i;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x4936ca55f00fc31L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method
