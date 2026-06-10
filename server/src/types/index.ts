type Session = {
  id: number;
  name: string;
  vat_enabled: boolean;
  sc_enabled: boolean;
  sc_rate: number;
  created_at: string;
};
type Member = { id: number; session_id: number; name: string };
type Item = { id: number; session_id: number; name: string; price: number };
type ItemMember = { item_id: number; member_id: number; share: number };

type MemberSummary = {
  member: Member;
  subtotal: number;
  sc: number;
  vat: number;
  total: number;
  items: { name: string; price: number }[];
};
