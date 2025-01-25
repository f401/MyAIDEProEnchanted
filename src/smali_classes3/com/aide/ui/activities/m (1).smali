.class Lcom/aide/ui/activities/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/CommitActivity;->DW(Ljava/lang/String;)V
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

.field final Hw:Lcom/aide/ui/activities/CommitActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xad487b9f6de2b7L

    const-wide v2, -0xb1f8f2316718d20L  # -9.642977704799424E254

    const-class v4, Lcom/aide/ui/activities/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/CommitActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/m;->Hw:Lcom/aide/ui/activities/CommitActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/m;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1e17aae239d8943L
    .end annotation

    const-wide v0, 0x1e10e55ba3e8169dL  # 7.335073297083086E-164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/m;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/CommitActivity;->j6(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/activities/m;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v4}, Lcom/aide/ui/activities/CommitActivity;->DW(Lcom/aide/ui/activities/CommitActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/activities/m;->FH:Ljava/lang/String;

    new-instance v6, Lcom/aide/ui/activities/CommitActivity$a;

    iget-object v7, p0, Lcom/aide/ui/activities/m;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-direct {v6, v7, v2}, Lcom/aide/ui/activities/CommitActivity$a;-><init>(Lcom/aide/ui/activities/CommitActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/ua$c;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/m;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method
