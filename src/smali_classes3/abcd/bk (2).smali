.class Labcd/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ck;->j6(Ljava/util/List;II)Lcom/aide/engine/SyntaxError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aide/engine/SyntaxError;",
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
.field final FH:Labcd/ck;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x650845e636406143L  # 4.91803584000971E178

    const-wide v2, 0x43fb9a6eeab7d9e0L  # 3.1824386237174514E19

    const-class v4, Labcd/bk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ck;)V
    .registers 2

    iput-object p1, p0, Labcd/bk;->FH:Labcd/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/aide/engine/SyntaxError;

    check-cast p2, Lcom/aide/engine/SyntaxError;

    invoke-virtual {p0, p1, p2}, Labcd/bk;->j6(Lcom/aide/engine/SyntaxError;Lcom/aide/engine/SyntaxError;)I

    move-result p1

    return p1
.end method

.method public j6(Lcom/aide/engine/SyntaxError;Lcom/aide/engine/SyntaxError;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb9ad9ced8d74d8L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/bk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x19fbcb0bcea975f0L  # -2.6831565816494304E183

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/bk;->FH:Labcd/ck;

    iget v1, p1, Lcom/aide/engine/SyntaxError;->v5:I

    iget v2, p1, Lcom/aide/engine/SyntaxError;->Zo:I

    iget v3, p2, Lcom/aide/engine/SyntaxError;->v5:I

    iget v4, p2, Lcom/aide/engine/SyntaxError;->Zo:I

    invoke-static {v0, v1, v2, v3, v4}, Labcd/ck;->j6(Labcd/ck;IIII)I

    move-result p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return p1

    :catchall_1b
    move-exception v0

    sget-boolean v1, Labcd/bk;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x19fbcb0bcea975f0L  # -2.6831565816494304E183

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method
