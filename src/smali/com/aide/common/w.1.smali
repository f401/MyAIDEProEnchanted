.class Lcom/aide/common/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/KeyStrokeDetector$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/common/KeyStrokeEditText;
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
.field final FH:Lcom/aide/common/KeyStrokeEditText;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/w;

    const-wide v2, -0x2510a776da237c6bL    # -1.0863958515119614E130

    const-wide v4, 0x89c215a5c2abb48L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/KeyStrokeEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/w;->FH:Lcom/aide/common/KeyStrokeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/common/u;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x25f25417b9e5ed49L
    .end annotation

    const-wide v2, 0x1f4cc53d683e9c2fL    # 6.548460546925198E-158

    :try_start_0
    sget-boolean v0, Lcom/aide/common/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f4cc53d683e9c2fL    # 6.548460546925198E-158

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/w;->FH:Lcom/aide/common/KeyStrokeEditText;

    invoke-virtual {v0, p1}, Lcom/aide/common/KeyStrokeEditText;->setKeyStroke(Lcom/aide/common/u;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
