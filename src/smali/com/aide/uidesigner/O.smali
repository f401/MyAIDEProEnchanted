.class final Lcom/aide/uidesigner/O;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->J8(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Lcom/aide/uidesigner/a;

.field final v5:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/O;

    const-wide v2, 0x1c796187b3007d70L    # 1.6419155400031285E-171

    const-wide v4, -0x303fecd6686f5957L    # -1.4541725458697493E76

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/uidesigner/O;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    iput-object p3, p0, Lcom/aide/uidesigner/O;->v5:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/O;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3a3a2876c5c4fbe0L
    .end annotation

    const-wide v6, 0x42d29debdef56c5L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x42d29debdef56c5L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Wrap Content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/O;->FH:Lcom/aide/uidesigner/s;

    iget-object v1, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    const-string v2, "wrap_content"

    invoke-virtual {v0, v1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Match Parent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/uidesigner/O;->FH:Lcom/aide/uidesigner/s;

    iget-object v1, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    const-string v2, "match_parent"

    invoke-virtual {v0, v1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/O;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    const-string v0, "match_parent"

    iget-object v1, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    iget-object v1, v1, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "wrap_content"

    iget-object v1, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    iget-object v1, v1, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    iget-object v0, v0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/aide/uidesigner/O;->v5:Landroid/app/Activity;

    iget-object v2, p0, Lcom/aide/uidesigner/O;->FH:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    const-string v4, "10dp"

    invoke-static {v1, v2, v3, v0, v4}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const-string v0, "10dp"

    goto :goto_1
.end method
