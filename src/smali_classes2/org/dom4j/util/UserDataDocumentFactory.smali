.class public Lorg/dom4j/util/UserDataDocumentFactory;
.super Lorg/dom4j/DocumentFactory;


# static fields
.field protected static transient singleton:Lorg/dom4j/util/UserDataDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/dom4j/util/UserDataDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/util/UserDataDocumentFactory;-><init>()V

    sput-object v0, Lorg/dom4j/util/UserDataDocumentFactory;->singleton:Lorg/dom4j/util/UserDataDocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .registers 1

    sget-object v0, Lorg/dom4j/util/UserDataDocumentFactory;->singleton:Lorg/dom4j/util/UserDataDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 5

    new-instance v0, Lorg/dom4j/util/UserDataAttribute;

    invoke-direct {v0, p2, p3}, Lorg/dom4j/util/UserDataAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 3

    new-instance v0, Lorg/dom4j/util/UserDataElement;

    invoke-direct {v0, p1}, Lorg/dom4j/util/UserDataElement;-><init>(Lorg/dom4j/QName;)V

    return-object v0
.end method
