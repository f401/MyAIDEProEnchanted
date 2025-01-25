.class Lcom/aide/uidesigner/U;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/W;->j6(Ljava/lang/String;)V
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
.field final FH:Lcom/aide/uidesigner/W;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, 0x3e4e910a764b9c3dL  # 1.4233666420375511E-8

    const-class v4, Lcom/aide/uidesigner/U;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/W;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/U;->FH:Lcom/aide/uidesigner/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/U;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x22bb758cb39cc25bL
    .end annotation

    const-wide v0, -0x12475d9d8ee84285L  # -3.478382414988359E220

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/U;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/aide/uidesigner/U;->FH:Lcom/aide/uidesigner/W;

    iget-object v2, v2, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/s;->setStyle(Ljava/lang/String;)V

    goto :goto_22

    :cond_1b
    iget-object v2, p0, Lcom/aide/uidesigner/U;->FH:Lcom/aide/uidesigner/W;

    iget-object v2, v2, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v2, p1}, Lcom/aide/uidesigner/s;->setStyle(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :goto_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/U;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method
