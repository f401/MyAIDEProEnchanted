.class Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field public FH:Ljava/io/File;
    .annotation runtime Labcd/ru;
        field = 0x239c624e862e9a7L
    .end annotation
.end field

.field public Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x28a0aead04b34820L
    .end annotation
.end field

.field public v5:Lcom/aide/uidesigner/s;
    .annotation runtime Labcd/ru;
        field = 0x28517e2107a8eb0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x917fac322e04c31L

    const-class v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/uidesigner/s;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xfebe5e3b641c6fL
    .end annotation

    const-wide v4, -0x2182716ad01b9730L    # -1.4763105480128032E147

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2182716ad01b9730L    # -1.4763105480128032E147

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x122ab31ee5e5d67L
    .end annotation

    const-wide v4, -0x23bc82e87e91bc38L    # -2.83301963507967E136

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23bc82e87e91bc38L    # -2.83301963507967E136

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Z)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x34d985f6992e0edL
    .end annotation

    const-wide v4, -0xd60e49fa1366abcL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd60e49fa1366abcL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
