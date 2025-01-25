.class Lcom/aide/uidesigner/D;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/E;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Lcom/aide/uidesigner/b;",
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
.field final FH:Lcom/aide/uidesigner/E;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1dd98fa673d10c90L  # -6.460833633665477E164

    const-wide v2, -0x18d227ad6287879L  # -1.263396589458162E301

    const-class v4, Lcom/aide/uidesigner/D;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/E;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/D;->FH:Lcom/aide/uidesigner/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/uidesigner/b;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x20141ca29990e5edL
    .end annotation

    const-wide v0, 0x67b524d86e10bL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/D;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/D;->FH:Lcom/aide/uidesigner/E;

    iget-object v2, v2, Lcom/aide/uidesigner/E;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v2, p1}, Lcom/aide/uidesigner/s;->Hw(Lcom/aide/uidesigner/b;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/D;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/uidesigner/b;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/D;->j6(Lcom/aide/uidesigner/b;)V

    return-void
.end method
