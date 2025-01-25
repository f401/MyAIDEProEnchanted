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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Lcom/aide/uidesigner/a;

.field final v5:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, -0x303fecd6686f5957L  # -1.4541725458697493E76

    const-class v4, Lcom/aide/uidesigner/O;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x3a3a2876c5c4fbe0L
    .end annotation

    const-wide v0, 0x42d29debdef56c5L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/O;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "Wrap Content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_56

    const-string v3, "wrap_content"

    if-eqz v2, :cond_1e

    :try_start_16
    iget-object v2, p0, Lcom/aide/uidesigner/O;->FH:Lcom/aide/uidesigner/s;

    iget-object v4, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    invoke-virtual {v2, v4, v3}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_55

    :cond_1e
    const-string v2, "Match Parent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_56

    const-string v4, "match_parent"

    if-eqz v2, :cond_30

    :try_start_28
    iget-object v2, p0, Lcom/aide/uidesigner/O;->FH:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    invoke-virtual {v2, v3, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_55

    :cond_30
    iget-object v2, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    iget-object v2, v2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_56

    const-string v4, "10dp"

    if-nez v2, :cond_4b

    :try_start_3c
    iget-object v2, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    iget-object v2, v2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    iget-object v2, v2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    goto :goto_4c

    :cond_4b
    move-object v2, v4

    :goto_4c
    iget-object v3, p0, Lcom/aide/uidesigner/O;->v5:Landroid/app/Activity;

    iget-object v5, p0, Lcom/aide/uidesigner/O;->FH:Lcom/aide/uidesigner/s;

    iget-object v6, p0, Lcom/aide/uidesigner/O;->Hw:Lcom/aide/uidesigner/a;

    invoke-static {v3, v5, v6, v2, v4}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_56

    :goto_55
    return-void

    :catchall_56
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/O;->DW:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    throw v2
.end method
