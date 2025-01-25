.class Lcom/aide/ui/debugger/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/debugger/Debugger;->DW()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aide/ui/debugger/Debugger$a;",
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
.field final FH:Lcom/aide/ui/debugger/Debugger;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x17801cc048e0cd10L

    const-wide v2, -0x17561c3fb9672288L  # -1.511936035911419E196

    const-class v4, Lcom/aide/ui/debugger/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/debugger/Debugger;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/debugger/e;->FH:Lcom/aide/ui/debugger/Debugger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/aide/ui/debugger/Debugger$a;

    check-cast p2, Lcom/aide/ui/debugger/Debugger$a;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/debugger/e;->j6(Lcom/aide/ui/debugger/Debugger$a;Lcom/aide/ui/debugger/Debugger$a;)I

    move-result p1

    return p1
.end method

.method public j6(Lcom/aide/ui/debugger/Debugger$a;Lcom/aide/ui/debugger/Debugger$a;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xd63216d1b4d980L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/e;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xca4eb4245e0687cL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p1, Lcom/aide/ui/debugger/Debugger$a;->Hw:Ljava/lang/String;

    iget-object v1, p2, Lcom/aide/ui/debugger/Debugger$a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    :cond_17
    iget v0, p1, Lcom/aide/ui/debugger/Debugger$a;->v5:I

    iget p1, p2, Lcom/aide/ui/debugger/Debugger$a;->v5:I
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1d

    sub-int/2addr v0, p1

    return v0

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/e;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0xca4eb4245e0687cL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method
