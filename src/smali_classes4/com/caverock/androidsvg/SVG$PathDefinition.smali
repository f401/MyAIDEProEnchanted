.class Lcom/caverock/androidsvg/SVG$PathDefinition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathDefinition"
.end annotation


# static fields
.field private static final ARCTO:B = 0x4t

.field private static final CLOSE:B = 0x8t

.field private static final CUBICTO:B = 0x2t

.field private static final LINETO:B = 0x1t

.field private static final MOVETO:B = 0x0t

.field private static final QUADTO:B = 0x3t


# instance fields
.field private commands:[B

.field private commandsLength:I

.field private coords:[F

.field private coordsLength:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iput v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    return-void
.end method

.method private addCommand(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    :cond_19
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method private coordsEnsure(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v0, v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    :cond_1a
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFZZFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_45

    const/4 v1, 0x2

    :goto_4
    if-eqz p5, :cond_7

    const/4 v0, 0x1

    :cond_7
    or-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p7, v0, v1

    return-void

    :cond_45
    move v1, v0

    goto :goto_4
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p5, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v0, v1

    return-void
.end method

.method enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PathInterface;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    move v8, v9

    move v1, v9

    :goto_4
    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-lt v8, v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    aget-byte v0, v0, v8

    packed-switch v0, :pswitch_data_b0

    :pswitch_10  #0x4, 0x5, 0x6, 0x7
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_a9

    move v4, v9

    :goto_15
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_ac

    move v5, v9

    :goto_1a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v2, v1, 0x1

    aget v1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v3, v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v6, v3, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v6, 0x1

    aget v6, v0, v6

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    aget v7, v0, v11

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/caverock/androidsvg/SVG$PathInterface;->arcTo(FFFZZFF)V

    add-int/lit8 v1, v11, 0x1

    :goto_3c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4

    :pswitch_40  #0x0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v1, v2, 0x1

    aget v2, v3, v2

    invoke-interface {p1, v0, v2}, Lcom/caverock/androidsvg/SVG$PathInterface;->moveTo(FF)V

    goto :goto_3c

    :pswitch_50  #0x1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v1, v2, 0x1

    aget v2, v3, v2

    invoke-interface {p1, v0, v2}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    goto :goto_3c

    :pswitch_60  #0x2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v2, v1, 0x1

    aget v1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v3, v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v3, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v5, v4, 0x1

    aget v4, v0, v4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v7, v5, 0x1

    aget v5, v0, v5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    aget v6, v0, v7

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    add-int/lit8 v1, v7, 0x1

    goto :goto_3c

    :pswitch_89  #0x3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v3, v2, 0x1

    aget v2, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v3, 0x1

    aget v3, v1, v3

    iget-object v5, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v1, v4, 0x1

    aget v4, v5, v4

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/caverock/androidsvg/SVG$PathInterface;->quadTo(FFFF)V

    goto :goto_3c

    :pswitch_a5  #0x8
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$PathInterface;->close()V

    goto :goto_3c

    :cond_a9
    move v4, v10

    goto/16 :goto_15

    :cond_ac
    move v5, v10

    goto/16 :goto_1a

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_50  #00000001
        :pswitch_60  #00000002
        :pswitch_89  #00000003
        :pswitch_10  #00000004
        :pswitch_10  #00000005
        :pswitch_10  #00000006
        :pswitch_10  #00000007
        :pswitch_a5  #00000008
    .end packed-switch
.end method

.method isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public lineTo(FF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    return-void
.end method

.method public moveTo(FF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    return-void
.end method

.method public quadTo(FFFF)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v1

    return-void
.end method
