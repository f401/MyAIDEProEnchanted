.class public Lcom/s1243808733/aide/completion/translate/TranslateTable;
.super Ljava/lang/Object;
.source "TranslateTable.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "zh"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "source"
    .end annotation
.end field

.field private state:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "state"
    .end annotation
.end field

.field private translation:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "translation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->id:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->state:I

    return v0
.end method

.method public getTranslation()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->translation:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    iput p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->id:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->source:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    iput p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->state:I

    return-void
.end method

.method public setTranslation(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;->translation:Ljava/lang/String;

    return-void
.end method
