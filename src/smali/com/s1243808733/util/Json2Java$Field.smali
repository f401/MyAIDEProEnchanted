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

    return-object p0
.end method

.method public setModifier(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Field;->modifier:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Field;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Field;->type:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/util/Json2Java$Field;->modifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Java$Field;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/util/Json2Java$Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
