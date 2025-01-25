.class Lcom/aide/uidesigner/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ca;->j6(Ljava/lang/String;)V
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
.field final FH:Lcom/aide/uidesigner/ca;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, -0x4428d6ade4d6fe9fL  # -1.961847660370597E-20

    const-class v4, Lcom/aide/uidesigner/ba;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/ca;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/ba;->FH:Lcom/aide/uidesigner/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/ba;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x39073a1b0b147935L
    .end annotation

    const-wide v0, 0x1e6b924f90691a80L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ba;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ba;->FH:Lcom/aide/uidesigner/ca;

    iget-object v2, v2, Lcom/aide/uidesigner/ca;->Hw:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/ba;->FH:Lcom/aide/uidesigner/ca;

    iget-object v3, v3, Lcom/aide/uidesigner/ca;->v5:Lcom/aide/uidesigner/a;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Lcom/aide/uidesigner/s;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ba;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method
