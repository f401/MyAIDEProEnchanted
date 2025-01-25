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
    .registers 3

    const-class v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    const-wide v1, -0x917fac322e04c31L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/uidesigner/s;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xfebe5e3b641c6fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2182716ad01b9730L  # -1.4763105480128032E147

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x122ab31ee5e5d67L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x23bc82e87e91bc38L  # -2.83301963507967E136

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Z)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x34d985f6992e0edL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xd60e49fa1366abcL

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->Hw:Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->DW:Z

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method
