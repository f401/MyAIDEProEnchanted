.class public Lcom/github/megatronking/svg/generator/vector/model/Path;
.super Ljava/lang/Object;


# instance fields
.field public fillAlpha:F

.field public fillColor:I

.field public fillType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parentGroup:Lcom/github/megatronking/svg/generator/vector/model/Group;

.field public pathData:Ljava/lang/String;

.field public strokeAlpha:F

.field public strokeColor:I

.field public strokeLineCap:Ljava/lang/String;

.field public strokeLineJoin:Ljava/lang/String;

.field public strokeMiterLimit:F

.field public strokeWidth:F

.field public trimPathEnd:F

.field public trimPathOffset:F

.field public trimPathStart:F


# direct methods
.method public constructor <init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/megatronking/svg/generator/vector/model/Path;->parentGroup:Lcom/github/megatronking/svg/generator/vector/model/Group;

    return-void
.end method
