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
    .registers 5

    const-wide v0, -0x140ed51b23477a3L

    const-wide v2, 0x97ef5c08c875838L

    const-class v4, Lcom/aide/licensing/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xd1a17704d6b71d3L
    .end annotation

    const-wide v0, 0x3c10648f58b209d8L  # 2.221640337719632E-19

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/licensing/c;->Zo:Lcom/aide/licensing/d$a;

    iget-object v2, v2, Lcom/aide/licensing/d$a;->Zo:Lcom/aide/licensing/d;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;J)J

    iget-object v2, p0, Lcom/aide/licensing/c;->Zo:Lcom/aide/licensing/d$a;

    iget-object v3, v2, Lcom/aide/licensing/d$a;->Zo:Lcom/aide/licensing/d;

    iget-object v2, p0, Lcom/aide/licensing/c;->Zo:Lcom/aide/licensing/d$a;

    invoke-static {v2}, Lcom/aide/licensing/d$a;->j6(Lcom/aide/licensing/d$a;)J

    move-result-wide v4

    iget v6, p0, Lcom/aide/licensing/c;->FH:I

    iget-object v7, p0, Lcom/aide/licensing/c;->Hw:Ljava/lang/String;

    iget-object v8, p0, Lcom/aide/licensing/c;->v5:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/d;JILjava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/c;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method
