.class Lcom/s1243808733/util/Json2Java$Field;
.super Ljava/lang/Object;
.source "Json2Java.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/Json2Java;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Field"
.end annotation


# instance fields
.field private array:Z

.field private modifier:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Field;->modifier:Ljava/lang/String;

    .line 328
    iput-object p2, p0, Lcom/s1243808733/util/Json2Java$Field;->type:Ljava/lang/String;

    .line 329
    iput-object p3, p0, Lcom/s1243808733/util/Json2Java$Field;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModifier()Ljava/lang/String;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/s1243808733/util/Json2Java$Field;->modifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/s1243808733/util/Json2Java$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/s1243808733/util/Json2Java$Field;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isArray()Z
    .registers 2

    .line 365
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Field;->array:Z

    return v0
.end method

.method public setArray(Z)Lcom/s1243808733/util/Json2Java$Field;
    .registers 2

    .line 360
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Field;->array:Z

    .line 361
    return-object p0
.end method

.method public setModifier(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Field;->modifier:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Field;->name:Ljava/lang/String;

    .line 352
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Field;->type:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 370
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/s1243808733/util/Json2Java$Field;->modifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/util/Json2Java$Field;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/util/Json2Java$Field;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
