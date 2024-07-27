.class public Lcom/github/megatronking/svg/generator/vector/model/Vector;
.super Ljava/lang/Object;


# instance fields
.field public alpha:F

.field public autoMirrored:Z

.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public height:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tint:I

.field public tintMode:Ljava/lang/String;

.field public viewportHeight:F

.field public viewportWidth:F

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Vector;->children:Ljava/util/List;

    return-void
.end method
