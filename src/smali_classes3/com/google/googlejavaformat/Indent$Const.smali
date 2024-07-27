.class public final Lcom/google/googlejavaformat/Indent$Const;
.super Lcom/google/googlejavaformat/Indent;
.source "Indent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Indent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Const"
.end annotation


# static fields
.field public static final ZERO:Lcom/google/googlejavaformat/Indent$Const;


# instance fields
.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/google/googlejavaformat/Indent$Const;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/Indent$Const;-><init>(I)V

    sput-object v0, Lcom/google/googlejavaformat/Indent$Const;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/google/googlejavaformat/Indent;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/googlejavaformat/Indent$Const;->n:I

    .line 37
    return-void
.end method

.method public static make(II)Lcom/google/googlejavaformat/Indent$Const;
    .registers 4

    .line 40
    new-instance v0, Lcom/google/googlejavaformat/Indent$Const;

    mul-int v1, p0, p1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/Indent$Const;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method eval()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/google/googlejavaformat/Indent$Const;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 50
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "n"

    iget v2, p0, Lcom/google/googlejavaformat/Indent$Const;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
