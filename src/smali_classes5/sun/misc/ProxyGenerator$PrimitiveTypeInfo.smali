.class Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveTypeInfo"
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseTypeString:Ljava/lang/String;

.field public unwrapMethodDesc:Ljava/lang/String;

.field public unwrapMethodName:Ljava/lang/String;

.field public wrapperClassName:Ljava/lang/String;

.field public wrapperValueOfDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1618
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->table:Ljava/util/Map;

    .line 1638
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1639
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1640
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1641
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1642
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1643
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1644
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1645
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->add(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1646
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1658
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->baseTypeString:Ljava/lang/String;

    .line 1659
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperClassName:Ljava/lang/String;

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->baseTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperValueOfDesc:Ljava/lang/String;

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->unwrapMethodName:Ljava/lang/String;

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->baseTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->unwrapMethodDesc:Ljava/lang/String;

    .line 1664
    return-void
.end method

.method private static add(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4

    .line 1649
    sget-object v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->table:Ljava/util/Map;

    new-instance v1, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;

    invoke-direct {v1, p0, p1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;
    .registers 2

    .line 1667
    sget-object v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;

    return-object v0
.end method
