.class Labcd/Te;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ue;->run()Z
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
.field final FH:Lcom/aide/engine/SyntaxError;

.field final Hw:Labcd/Ue;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xd2a15a15a8f0cfdL  # 2.9845299921595454E-245

    const-wide v2, -0x1969c5c329507118L  # -1.51115070226009E186

    const-class v4, Labcd/Te;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ue;Lcom/aide/engine/SyntaxError;)V
    .registers 3

    iput-object p1, p0, Labcd/Te;->Hw:Labcd/Ue;

    iput-object p2, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x232b59bf16974b15L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Te;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x15b0aa67f9f59a0dL  # 3.322195462158567E-204

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    iget-object v0, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v2, v0, Lcom/aide/engine/SyntaxError;->v5:I

    iget-object v0, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v3, v0, Lcom/aide/engine/SyntaxError;->Zo:I

    iget-object v0, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v4, v0, Lcom/aide/engine/SyntaxError;->VH:I

    iget-object v0, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v5, v0, Lcom/aide/engine/SyntaxError;->gn:I

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/AIDEEditorPager;->j6(IIIILjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/Te;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, 0x15b0aa67f9f59a0dL  # 3.322195462158567E-204

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method
