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
    .registers 6

    const-class v0, Labcd/Te;

    const-wide v2, 0xd2a15a15a8f0cfdL    # 2.9845299921595454E-245

    const-wide v4, -0x1969c5c329507118L    # -1.51115070226009E186

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x232b59bf16974b15L
    .end annotation

    const-wide v6, 0x15b0aa67f9f59a0dL    # 3.322195462158567E-204

    :try_start_0
    sget-boolean v0, Labcd/Te;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x15b0aa67f9f59a0dL    # 3.322195462158567E-204

    invoke-static {v2, v3, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget-object v1, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v1, v1, Lcom/aide/engine/SyntaxError;->v5:I

    iget-object v2, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v2, v2, Lcom/aide/engine/SyntaxError;->Zo:I

    iget-object v3, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->VH:I

    iget-object v4, p0, Labcd/Te;->FH:Lcom/aide/engine/SyntaxError;

    iget v4, v4, Lcom/aide/engine/SyntaxError;->gn:I

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/AIDEEditorPager;->j6(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Te;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v6

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
