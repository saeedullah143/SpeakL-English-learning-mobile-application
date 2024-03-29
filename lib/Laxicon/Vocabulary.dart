import 'package:flutter/material.dart';

class VocabularyPage extends StatelessWidget {
  final Map<String, String> vocabulary = {
    'Administrator': 'A person responsible for managing and overseeing administrative tasks in an organization.',
    'Aisle': 'A long, narrow passage between rows of shelves in a supermarket or store.',
    'Alphabet': 'The set of letters used to write a language in a particular order.',
    'Animals': 'Living organisms that can move, consume food, and reproduce.',
    'Appliance': 'A device or machine used for household tasks, such as a refrigerator or washing machine.',
    'Asphalt': 'A black, sticky substance used for surfacing roads and pavements.',
    'Assignment': 'A task or piece of work assigned to students by a teacher.',
    'Attic': 'The space or room at the top of a house, typically used for storage.',
    'Backpack': 'A bag carried on one\'s back, typically used by students to carry books and supplies.',
    'Barcode': 'A series of lines and numbers used to identify products for purchase.',
    'Basement': 'The lowest floor of a building, usually partially or entirely below ground level.',
    'Bathroom': 'A room containing a toilet and a sink, used for personal hygiene.',
    'Bedroom': 'A room in a house used for sleeping and resting.',
    'Bell': 'A device that rings to signal the beginning or end of a school period.',
    'Bicycle Lane': 'A designated lane on a road for the exclusive use of bicycles.',
    'Blinds': 'Window coverings consisting of horizontal or vertical slats that can be adjusted to control the amount of light and privacy.',
    'Boardroom': 'A meeting room used for conducting discussions and decision-making by a board of directors or executives.',
    'Bookshelf': 'A piece of furniture with shelves for storing books.',
    'Cabinet': 'A piece of furniture with doors and shelves used for storing various items.',
    'Cashier': 'A person who operates a cash register and handles customer payments in a store.',
    'Ceiling': 'The upper interior surface of a room.',
    'Classroom': 'A room in a school where students are taught by a teacher.',
    'Climate': 'The long-term pattern of weather conditions in a specific region.',
    'Closet': 'A small room or space used for storing clothes and other personal belongings.',
    'Collaboration': 'Working together with others to achieve a common goal or project.',
    'Crosswalk': 'A marked path across a road, typically at an intersection, for pedestrians to cross safely.',
    'Desk': 'A piece of furniture with a flat surface, typically used for working or studying.',
    'Dining Room': 'A room in a house used for eating meals.',
    'Diploma': 'A certificate or document awarded to a student upon successful completion of a course of study.',
    'Discount': 'A reduction in the original price of a product, often used as a promotional offer.',
    'Diversity': 'Variation or differences within a group or ecosystem.',
    'Driver': 'A person who operates a vehicle on the road.',
    'Doormat': 'A mat placed at the entrance of a house for wiping shoes before entering.',
    'E-commerce': 'Buying and selling goods or services over the internet through online stores and websites.',
    'Ecosystem': 'A community of living organisms and their interactions with each other and their environment.',
    'Employee': 'A person hired to work for an organization in exchange for wages or a salary.',
    'Entryway': 'The area at the entrance of a house.',
    'Examination': 'A formal written or oral test of knowledge or ability, often used for assessment in schools.',
    'Expressway': 'A high-speed, divided highway designed for fast-moving traffic.',
    'Fax Machine': 'An electronic device that transmits scanned documents or images over telephone lines.',
    'Field Trip': 'An educational outing or excursion organized by a school to enhance learning outside the classroom.',
    'Flora': 'The plant life of a particular region or period.',
    'Fresh Produce': 'Fruits and vegetables that are sold in their natural state, typically in a market.',
    'Furniture': 'Large movable items, such as chairs, tables, and sofas, that are used to make a room suitable for living or working.',
    'Garage': 'A building or part of a building used for storing vehicles and other items.',
    'Garden': 'An area of land where plants, flowers, and vegetables are grown.',
    'Greenhouse Effect': 'The trapping of heat in Earth\'s atmosphere by certain gases, leading to a warming effect.',
    'Grocery Store': 'A retail store that sells food and other household items.',
    'Guardrail': 'A metal or wooden barrier placed at the edge of a road to prevent vehicles from going off the road.',
    'Habitat': 'The natural environment where a particular species of organism lives.',
    'Highway': 'A major road, typically designed for high-speed travel between cities or regions.',
    'Home Office': 'A designated area in a home used for work or professional tasks.',
    'In Stock': 'Available for purchase and currently present in the store\'s inventory.',
    'Inbox': 'A digital or physical location where incoming messages, emails, or documents are received.',
    'Intersection': 'A point where two or more roads cross each other.',
    'Jewelry': 'Ornaments such as rings, necklaces, and bracelets made of precious metals and gemstones.',
    'Job Title': 'A designation or name given to a specific position or role within an organization.',
    'Jungle': 'A dense, tropical forest with abundant vegetation.',
    'Keystone Species': 'A species that has a disproportionate impact on its ecosystem.',
    'Kitchen': 'A room or area in which food is prepared and cooked.',
    'Kiosk': 'A small, standalone booth or structure used for selling goods or providing information.',
    'Landscape': 'The visible features of an area, including landforms, vegetation, and bodies of water.',
    'Library': 'A place where books and other resources are kept and made available for borrowing or reading.',
    'Living Room': 'A room in a house for general and informal everyday use.',
    'Loyalty Card': 'A card issued by a store to reward customers for repeat purchases with discounts or points.',
    'Laundry Room': 'A room equipped with washing and drying machines for laundry tasks.',
    'Mathematics': 'The study of numbers, quantities, shapes, and patterns.',
    'Meeting': 'A gathering of people for discussing and sharing information or making decisions.',
    'Merchandise': 'Products or goods available for sale in a store.',
    'Microclimate': 'The climate of a small, localized area that may differ from the surrounding region.',
    'Mirror': 'A reflective surface, typically made of glass, used for viewing one\'s reflection.',
    'Mudroom': 'A room or entryway in a house designed for removing and storing outdoor clothing and footwear.',
    'Natural Resources': 'Materials and substances found in nature that are valuable to humans.',
    'Niche Market': 'A specialized or focused segment of the market catering to a specific customer group or product category.',
    'Notebook': 'A book with blank or ruled pages for taking notes or writing assignments.',
    'Online Learning': 'A method of education where instruction is delivered via the internet and digital resources.',
    'Online Shopping': 'Purchasing products or services through websites or mobile apps on the internet.',
    'Overpass': 'A bridge or structure that allows a road or railway to pass over another road or railway.',
    'Pantry': 'A small room or cupboard used for storing food and kitchen supplies.',
    'Patio': 'An outdoor area adjacent to a house, typically used for dining and relaxation.',
    'Pencil': 'A writing instrument with a thin cylindrical graphite core enclosed in wood or plastic.',
    'Presentation': 'A formal display of information or ideas, often using visual aids.',
    'Price Tag': 'A label or sticker on a product displaying its price.',
    'Plumbing': 'The system of pipes, fixtures, and appliances used for water supply and drainage in a building.',
    'Qualifications': 'Skills, knowledge, or attributes that make a person suitable for a particular job or role.',
    'Queue': 'A line or sequence of people waiting for their turn, often seen at checkout counters.',
    'Receipt': 'A document providing proof of purchase and detailing the items bought and their prices.',
    'Receptionist': 'A person who greets visitors, answers phone calls, and provides assistance at the front desk of an office.',
    'Roundabout': 'A circular intersection where traffic moves in a counterclockwise direction around a central island.',
    'Roof': 'The top covering of a building that provides protection from the elements.',
    'Shower': 'A device or enclosure that sprays water onto a person\'s body for bathing.',
    'Sink': 'A basin with a faucet for washing hands, dishes, and other items.',
    'Stairs': 'A series of steps or flights of steps used for going from one level to another in a building.',
    'Salary': 'A fixed regular payment made by an employer to an employee in exchange for their work.',
    'Science': 'The systematic study of the natural world, including physics, chemistry, biology, and earth sciences.',
    'Speed Limit': 'The maximum legal speed at which vehicles are allowed to travel on a particular road.',
    'Teamwork': 'Collaborative effort by a group of people to achieve a common goal or complete a task.',
    'Textbook': 'A book used as the primary source of study material for a particular subject.',
    'Traffic Jam': 'A situation where a large number of vehicles are stuck in slow or stationary traffic.',
    'Transaction': 'The process of buying or selling goods or services, typically involving payment.',
    'Table': 'A piece of furniture with a flat top and one or more legs, used for eating, working, or other activities.',
    'Television': 'An electronic device for receiving and displaying broadcast or cable television programs.',
    'Thermostat': 'A device that regulates the temperature of a heating or cooling system.',
    'Toilet': 'A fixture used for the disposal of human waste and toilet hygiene.',
    'Uniform': 'A standardized outfit worn by employees or members of an organization for identification or as a dress code.',
    'Underpass': 'A tunnel or passage that allows a road or railway to pass underneath another road or railway.',
    'Up-cycling': 'The practice of converting waste materials or old products into new, higher-value items.',
    'Vacation Days': 'Paid time off granted to employees for leisure or personal activities.',
    'Vendor': 'A person or company that sells goods or services.',
    'Vacuum Cleaner': 'An electrical appliance used for cleaning floors and other surfaces by suction.',
    'Vase': 'A decorative container typically used for holding flowers or other arrangements.',
    'Wall': 'The vertical surface that encloses or divides spaces in a building.',
    'Wardrobe': 'A large freestanding cupboard or closet used for storing clothes and other personal items.',
    'Window': 'An opening in a wall or roof that is fitted with glass or other transparent material.',
    'Wallet': 'A small, flat container for holding money, credit cards, and identification.',
    'Warning Sign': 'A road sign that alerts drivers to potential hazards or conditions ahead.',
    'Writing': 'The act or process of composing text, typically done with pen and paper or digitally.',
    'Workstation': 'A designated area with equipment and tools for an employee to perform their job tasks.',
    'Xing': 'An abbreviation often used on road signs to indicate a pedestrian crossing.',
    'Xerox Machine': 'A brand of photocopier or a similar device used for making copies of documents.',
    'Yearbook': 'A book published annually by a school, containing photographs, events, and memories of the academic year.',
    'Yearly Review': 'An annual assessment of an employee\'s performance and progress in their job role.',
    'Yield': 'The amount of a product obtained from a specific quantity of resources or inputs.',
    'Yosemite': 'A national park located in California, known for its scenic beauty and natural wonders.',
    'Zigzag Lines': 'Road markings consisting of a series of diagonal lines indicating a no-parking zone or approach to a pedestrian crossing.',
    'Zoom Call': 'A video conference or virtual meeting conducted using the Zoom platform.',
    'Zoom Class': 'A virtual classroom or online class conducted through video conferencing software.'
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vocabulay'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: vocabulary.length,
        itemBuilder: (context, index) {
          final word = vocabulary.keys.elementAt(index);
          final definition = vocabulary[word];
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$word',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,top: 8.0,right: 5.0),
                    child: Text('$definition', style: TextStyle(fontSize: 16.0),),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


