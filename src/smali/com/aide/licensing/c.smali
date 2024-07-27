.class Lcom/aide/licensing/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/licensing/d$a;->j6(ILjava/lang/String;Ljava/lang/String;)V
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
.field final FH:I

.field final Hw:Ljava/lang/String;

.field final Zo:Lcom/aide/licensing/d$a;

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/licensing/c;

    const-wide v2, -0x140ed51b23477a3L

    const-wide v4, 0x97ef5c08c875838L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/licensing/d$a;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/licensing/c;->Zo:Lcom/aide/licensing/d$a;

    iput p2, p0, Lcom/aide/licensing/c;->FH:I

    iput-object p3, p0, Lcom/aide/licensing/c;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/licensing/c;->v5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xd1a17704d6b71d3L
    .end annotation

    const-wide v8, 0x3c10648f58b209d8L    # 2.221640337719632E-19

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c10648f58b209d8L    # 2.221640337719632E-19

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/licensing/c;->Zo:Lcom/aide/licensing/d$a;

    iget-object v0, v0, Lcom/aide/licensing/d$a;->Zo:Lcom/aide/licensing/d;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;J)J

    iget-object v0, p0, Lcom/aide/licensing/c;->Zo:Lcom/aide/licensing/d$a;

    iget-object v1, v0, Lcom/aide/licensing/d$a;->Zo:Lcom/aide/licensing/d;

    iget-object v0, p0, Lcom/aide/licensing/c;->Zo:Lcom/aide/licensing/d$a;

    invoke-static {v0}, Lcom/aide/licensing/d$a;->j6(Lcom/aide/licensing/d$a;)J

    move-result-wide v2

    iget v4, p0, Lcom/aide/licensing/c;->FH:I

    iget-object v5, p0, Lcom/aide/licensing/c;->Hw:Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/licensing/c;->v5:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
