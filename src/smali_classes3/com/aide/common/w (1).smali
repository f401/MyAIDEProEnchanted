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
    .registers 5

    const-wide v0, -0x2510a776da237c6bL  # -1.0863958515119614E130

    const-wide v2, 0x89c215a5c2abb48L

    const-class v4, Lcom/aide/common/w;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x1f4cc53d683e9c2fL  # 6.548460546925198E-158

    :try_start_5
    sget-boolean v2, Lcom/aide/common/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/w;->FH:Lcom/aide/common/KeyStrokeEditText;

    invoke-virtual {v2, p1}, Lcom/aide/common/KeyStrokeEditText;->setKeyStroke(Lcom/aide/common/u;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    const/4 p1, 0x1

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/common/w;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method
